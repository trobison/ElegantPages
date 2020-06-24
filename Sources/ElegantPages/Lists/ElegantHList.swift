// Kevin Li - 6:13 PM - 6/23/20

import SwiftUI

public struct ElegantHList: View, ElegantListManagerDirectAccess {

    @ObservedObject var manager: ElegantListManager
    var bounces: Bool = false

    private var pagerWidth: CGFloat {
        screen.width * CGFloat(maxPageIndex+1)
    }

    public var body: some View {
        ElegantList(manager: manager,
                    listView: listView,
                    isHorizontal: true,
                    bounces: bounces)
    }

    private var listView: some View {
        HStack(alignment: .center, spacing: 0) {
            ElegantListView(manager: manager, axis: .horizontal)
                .frame(width: pagerWidth)
        }
        .frame(width: screen.width, height: screen.height, alignment: .leading)
    }

}

