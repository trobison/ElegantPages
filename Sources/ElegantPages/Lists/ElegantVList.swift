// Kevin Li - 6:13 PM - 6/23/20

import SwiftUI

public struct ElegantVList: View, ElegantListManagerDirectAccess {

    @ObservedObject var manager: ElegantListManager
    var bounces: Bool = false

    private var pagerHeight: CGFloat {
        screen.height * CGFloat(maxPageIndex+1)
    }

    public var body: some View {
        ElegantList(manager: manager,
                    listView: listView,
                    isHorizontal: false,
                    bounces: bounces)
    }

    private var listView: some View {
        VStack(alignment: .center, spacing: 0) {
            ElegantListView(manager: manager, axis: .vertical)
                .frame(height: pagerHeight)
        }
        .frame(width: screen.width, height: screen.height, alignment: .top)
    }

}
