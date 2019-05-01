//
//  URL.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

extension URL {
	public init(photoId: String) {
		self.init(fileURLWithPath: FileManager.workDirectory.absoluteString)
		appendPathComponent(photoId)
		//(fileURLWithPath: FileManager.directory.absoluteString).appendingPathComponent(id, isDirectory: true)
	}
}
