//
//  MainViewModel.swift
//  MVVMApp
//
//  Created by Kushagra Mishra on 11/06/24.
//

import Foundation

class MainViewModel {
    
        var cellDataSource: Observable<[Movie]> = Observable(nil)
        var isLoading: Observable<Bool> = Observable(false)
        var dataSource: TrendingMovieModel?
//        var movies: Observable<[MovieTableCellViewModel]> = Observable(nil)
        
        func numberOfSections() -> Int {
            return 1
        }
        
        func numberOfRows(in section: Int) -> Int {
            return dataSource?.results.count ?? 0
        }
        
    func getData() {
        if isLoading.value ?? true {
            return
        }
        
        isLoading.value = true
        APICaller.getTrendingMovies { [weak self] result in
            self?.isLoading.value = false
            
            switch result {
            case .success(let data):
                print("Top Trending Counts: \(data.results.count)")
                self?.dataSource = data
                self?.mapCellData()
            case .failure(let err):
                print(err)
            }
        }
    }
            func mapCellData() {
                self.cellDataSource.value = self.dataSource?.results ?? []
            }
            
    func getMovieTitle(_ movie: Movie) -> String {
        return movie.title ?? movie.name ?? ""
    }
        }
    

