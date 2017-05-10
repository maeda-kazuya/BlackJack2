let dealUnit = 4
let threshold = 21
let depth = 2

let cardNums = [10, 12, 4, 12, 9, 7, 7, 9, 7, 10, 5, 12, 4, 6, 8, 5, 13, 6, 1, 2, 5, 10, 8, 12, 6, 10, 13, 2, 1, 7, 9, 10]
//let cardNums = [10, 12, 4, 12, 9, 7, 7, 9, 7, 10, 5, 12, 4, 6, 8, 5, 13, 6, 1, 2, 5, 10, 8, 12, 6, 10, 13, 2, 1, 7, 9, 10, 3, 13, 10, 11, 3, 10, 10, 11, 7, 6, 4, 11, 7, 9, 9, 10, 10, 3, 5, 10, 2, 11, 4, 6, 4, 2, 9, 12, 2, 8, 7, 12, 3, 1, 6, 9, 5, 10, 13, 11, 12, 10, 6, 1, 3, 10, 12, 9, 6, 9, 5, 3, 6, 12, 2, 12, 12, 6, 8, 5, 12, 8, 10, 12, 11, 9, 12, 5, 11, 9, 13, 4, 11, 7, 11, 8, 12, 1, 8, 6, 5, 7, 1, 10, 3, 4, 11, 10, 4, 12, 1, 1, 9, 1, 12, 1, 11, 5, 6, 10, 11, 6, 7, 5, 12, 6, 10, 7, 7, 10, 4, 13, 2, 3, 1, 1, 11, 13, 11, 10, 3, 2, 3, 8, 7, 8, 10, 9, 9, 12, 10, 11, 10, 11, 1, 5, 12, 2, 10, 7, 1, 8, 9, 3, 12, 10, 10, 5, 10, 1, 4, 6, 2, 4, 7, 1, 1, 5, 11, 11, 7, 9, 7, 6, 1, 8, 9, 2, 13, 5, 12, 5, 13, 12, 3, 2, 7, 11, 6, 12, 5, 12, 5, 11, 3, 9, 13, 7, 12, 2, 9, 3, 5, 2, 4, 9, 8, 2, 4, 12, 13, 8, 9, 12, 7, 3, 7, 10, 11, 5, 9, 1, 13, 7, 11, 5, 6, 5, 11, 3, 1, 13, 8, 9, 11, 7, 5, 6, 6, 12, 4, 8, 13, 5, 5, 10, 2, 8, 7, 2, 6, 4, 1, 13, 9, 11, 5, 7, 6, 4, 8, 6, 7, 8, 10, 6, 4, 7, 12, 2, 3, 5, 4, 5, 4, 5, 2, 7, 1, 8, 3, 7, 12, 3, 9, 3, 10, 8, 5, 8, 3, 3, 9, 13, 2, 12, 12, 9, 11, 2, 4, 2, 9, 7, 3, 8, 4, 9, 3, 6, 3, 7, 5, 13, 13, 7, 9, 8, 8, 12, 2, 1, 9, 2, 12, 4, 13, 3, 10, 11, 13, 2, 10, 5, 7, 10, 12, 1, 12, 6, 10, 2, 7, 5, 2, 9, 6, 13, 3, 12, 4, 7, 2, 13, 7, 13, 4, 10, 8, 1, 10, 13, 4, 10, 4, 10, 3, 2, 2, 13, 3, 8, 1, 2, 9, 8, 2, 1, 8, 5, 3, 3, 7, 12, 10, 13, 5, 9, 3, 4, 7, 1, 9, 1, 12, 10, 13, 6, 5, 10, 2, 12, 13, 4, 12, 7, 11, 12, 13, 6, 11, 3, 2, 7, 6, 4, 2, 9, 13, 12, 9, 6, 9, 3, 10, 13, 10, 12, 5, 12, 2, 12, 9, 6, 13, 7, 13, 5, 3, 12, 3, 9, 12, 7, 4, 11, 3, 3, 12, 8, 10, 8, 7, 8, 9, 5, 7, 8, 13, 3, 8, 7, 5, 5, 8, 9, 1, 13, 8, 1, 2, 1, 4, 5, 4, 12, 9, 5, 10, 1, 8, 3, 1, 13, 10, 13, 12, 6, 9, 10, 2, 6, 6, 4, 12, 6, 2, 1, 4, 11, 11, 7, 1, 2, 5, 1, 11, 9, 2, 10, 12, 11, 10, 12, 8, 2, 1, 5, 4, 2, 12, 9, 5, 7, 3, 6, 9, 3, 3, 10, 5, 9, 12, 4, 2, 8, 2, 3, 8, 11, 12, 10, 2, 9, 6, 4, 9, 5, 5, 6, 5, 8, 9, 5, 2, 5, 2, 6, 4, 12, 6, 8, 13, 4, 4, 13, 5, 9, 1, 7, 13, 4, 9, 8, 7, 10, 2, 3, 5, 6, 7, 5, 3, 7, 13, 7, 13, 1, 4, 2, 7, 8, 8, 3, 6, 8, 5, 5, 8, 6, 3, 6, 6, 9, 9, 5, 13, 10, 8, 2, 11, 4, 10, 13, 10, 3, 11, 8, 10, 6, 12, 7, 4, 7, 7, 8, 1, 9, 2, 3, 11, 7, 10, 11, 9, 12, 3, 8, 13, 5, 3, 11, 8, 6, 13, 1, 11, 10, 8, 7, 4, 11, 9, 6, 6, 10, 13, 9, 4, 5, 3, 6, 10, 13, 1, 6, 11, 11, 7, 6, 13, 10, 13, 9, 9, 4, 1, 3, 3, 10, 11, 13, 4, 2, 4, 4, 1, 12, 2, 2, 7, 12, 11, 12, 1, 1, 7, 1, 6, 2, 2, 6, 5, 4, 11, 9, 2, 13, 5, 11, 13, 4, 13, 6, 2, 9, 8, 13, 2, 2, 2, 11, 3, 12, 6, 5, 5, 6, 4, 7, 1, 13, 9, 8, 1, 10, 13, 10, 6, 8, 2, 10, 7, 3, 9, 1, 7, 8, 1, 3, 9, 3, 1, 8, 1, 8, 10, 6, 3, 9, 2, 2, 10, 7, 11, 9, 3, 5, 7, 2, 1, 9, 11, 7, 3, 10, 3, 6, 2, 13, 10, 8, 10, 8, 1, 7, 13, 1, 8, 13, 2, 13, 8, 8, 4, 5, 11, 3, 4, 6, 12, 6, 10, 9, 13, 3, 1, 2, 1, 1, 6, 1, 1, 8, 1, 8, 13, 13, 8, 2, 7, 10, 6, 13, 6, 4, 4, 5, 8, 9, 2, 6, 5, 7, 10, 8, 11, 3, 11, 8, 4, 3, 7, 9, 9, 2, 5, 13, 7, 6, 6, 3, 2, 13, 8, 9, 7, 5, 9, 4, 7, 13, 11, 3, 11, 13, 13, 2, 8, 12, 7, 7, 6, 7, 9, 1, 7, 12, 2, 8, 6, 11, 8, 9, 10, 13, 13, 5, 8, 12, 9, 11, 6, 12, 5, 5, 13, 3, 12, 6, 5, 7, 3, 9, 4, 9, 1, 1, 11, 11, 4, 5, 8, 9, 12, 1, 7, 13, 11, 4, 10, 8, 8, 9, 2, 1, 8, 12, 13, 4, 8, 3, 2, 5, 1, 1, 8, 13, 4, 1, 11, 12, 13, 7, 12, 11, 11, 10, 11, 6, 5, 11, 5, 12, 2, 5, 3, 13, 7, 7, 4, 6, 13, 8, 1, 6, 7, 4, 7, 2, 9, 5, 6, 1, 11, 12, 1, 8]

func main() {
    let nums = cap(nums: cardNums)
    
    let rootNode = getNode(rootDeal: Deal(), nums: nums, depth: 4)
    let maxWinCount = getMaxWinCount(node: rootNode, count: 0)
    print("\n### max winCount: " + String(maxWinCount))
    
    
//    print("\n#[LAST]: " + String(play(count: 0, nums: nums)))
}

func getMaxWinCount(node: Node, count: Int) -> Int {
    print("\n(関数内)")
    print("player nums: " + String(describing: node.deal.playerNums))
    print("dealer nums: " + String(describing: node.deal.dealerNums))
    print("rest nums: " + String(describing: node.restNums))
    print("count: " + String(count))
    
    var maxWinCount = count
    var winCount = 0
    
    if (node.deal.didPlayerWin()) {
        print("# didPlayerWin!")
//        print("player nums: " + String(describing: node.deal.playerNums))
//        print("dealer nums: " + String(describing: node.deal.dealerNums))
        
        winCount += 1
    }
    
    if (node.childs.count > 0) {
        print("YES Child")
        for childNode in node.childs {
//            let subCount = getMaxWinCount(node: childNode, count: maxWinCount)
            let subCount = getMaxWinCount(node: childNode, count: winCount)
            print("[A] subCount : " + String(subCount))
            
            if (winCount + subCount > maxWinCount) {
                print("Maxを更新 from: " + String(maxWinCount) + " to: " + String(winCount + subCount))
                maxWinCount = winCount + subCount
            }
        }
    } else {
        print("\n### NO Child, PLAY!!")
        let subCount = play(count: 0, nums: node.restNums)
//        print("[B] restNums: " + String(describing: node.restNums))
        print("[B] subCount: " + String(subCount))
            
        if (winCount + subCount > maxWinCount) {
            print("Maxを更新 from: " + String(maxWinCount) + " to: " + String(winCount + subCount))
            maxWinCount = winCount + subCount
        }
    }
    
    return maxWinCount
}



//func getNextDeal(deal: Deal, nums: [Int]) -> Deal {
//    if (deal.isPlayerBust()) {
//        return nil
//    }
//    
//    let nextDeal = Deal()
//    nextDeal.playerNums = deal.playerNums
//    nextDeal.playerNums.append(nums[0])
//    nextDeal.dealerNums = deal.dealerNums
//
//    return nextDeal
//}

func getNode(rootDeal: Deal, nums: [Int], depth: Int) -> Node {
    let rootNode = Node(deal: rootDeal, restNums: nums)
    
    if (depth > 0 && nums.count > dealUnit - 1) {
        let deal = Deal()
        deal.playerNums = [nums[0], nums[2]]
        deal.dealerNums = [nums[1], nums[3]]
        
        // Add child node
        let restNums: [Int] = ([Int])(nums[(4)...(nums.count - 1)])
        let childNode = getNode(rootDeal: deal, nums: restNums, depth: depth - 1)
        rootNode.childs.append(childNode)
        
        //        print("\nplayer nums: " + String(describing: deal.playerNums))
        //        print("dealer nums: " + String(describing: deal.dealerNums))
        //        print("rest nums: " + String(describing: restNums))

//        for (index, num) in restNums.enumerated() {

        let tempDeal = Deal()
        tempDeal.playerNums = deal.playerNums
        tempDeal.dealerNums = deal.dealerNums
        
        var count = 0
        while (!(tempDeal.isPlayerBust())) {
            let subDeal = Deal()
            subDeal.playerNums = tempDeal.playerNums
            subDeal.dealerNums = tempDeal.dealerNums

            tempDeal.playerNums.append(restNums[count])
            subDeal.playerNums.append(restNums[count])
            
            // Add child node
            let subNums: [Int] = ([Int])(restNums[(count + 1)...(restNums.count - 1)])
            let childNode = getNode(rootDeal: subDeal, nums: subNums, depth: depth - 1)
            rootNode.childs.append(childNode)

            count += 1
        }
        
        
//        }
        
//        let subDeal = Deal()
//        subDeal.playerNums = deal.playerNums
//        subDeal.dealerNums = deal.dealerNums
//        
//        for (index, num) in restNums.enumerated() {
//            if (!(subDeal.isPlayerBust())) {
//                subDeal.playerNums.append(num)
//                
//                // Add child node
//                let subNums: [Int] = ([Int])(restNums[(index + 1)...(restNums.count - 1)])
//                let childNode = getNode(rootDeal: subDeal, nums: subNums, depth: depth - 1)
//                rootNode.childs.append(childNode)
//                
//                //                print("\nplayer nums: " + String(describing: subDeal.playerNums))
//                //                print("dealer nums: " + String(describing: subDeal.dealerNums))
//                //                print("rest nums: " + String(describing: subNums))
//            }
//        }
    }
    
    return rootNode
}

func play(count: Int, nums: [Int]) -> Int {
    var winCount = count
    let deal = Deal()
    deal.playerNums = [nums[0], nums[2]]
    deal.dealerNums = [nums[1], nums[3]]
    
    if (deal.didPlayerWin()) {
        print("\nWin at first!")
        print("player nums: " + String(describing: deal.playerNums))
        print("dealer nums: " + String(describing: deal.dealerNums))
        
        winCount += 1
        
        if (nums.count > dealUnit * 2 - 1) {
            let restNums = ([Int])(nums[dealUnit...(nums.count - 1)])
            winCount = play(count: winCount, nums: restNums)
        }
    } else if (nums.count > dealUnit) {
//        print("\nLoosing..")
//        print("player nums: " + String(describing: deal.playerNums))
//        print("dealer nums: " + String(describing: deal.dealerNums))
        
        // Hit if player can win
        let restNums = ([Int])(nums[dealUnit...(nums.count - 1)])
        
        if let hitCount = getHitCount(count: 0, deal: deal, nums: restNums) {
            print("\nWin after hit count:" + String(hitCount))
            print("player nums: " + String(describing: deal.playerNums))
            print("dealer nums: " + String(describing: deal.dealerNums))
            
            winCount += 1
            if (nums.count > (dealUnit * 2 - 1) + hitCount) {
                let restNums = ([Int])(nums[(dealUnit + hitCount)...(nums.count - 1)])
                winCount = play(count: winCount, nums: restNums)
            }
        } else if (nums.count > dealUnit * 2 - 1) {
            let restNums = ([Int])(nums[dealUnit...(nums.count - 1)])
            winCount = play(count: winCount, nums: restNums)
        }
    }
    
    return winCount
}

func getHitCount(count: Int, deal: Deal, nums: [Int]) -> Int? {
    let hitCount = count + 1
    deal.playerNums.append(nums[0])
    
    if (deal.didPlayerWin()) {
        return hitCount
    } else if (!(deal.isPlayerBust()) && nums.count > 1) {
        let restNums = ([Int])(nums[1...(nums.count - 1)])
        if let hitCount = getHitCount(count: hitCount, deal: deal, nums: restNums) {
            return hitCount
        }
    }
    
    return nil
}

func cap(nums: [Int]) -> [Int] {
    var cappedNums: [Int] = []
    for num in nums { (num > 10) ? cappedNums.append(10) : cappedNums.append(num) }
    
    print("# nums: " + String(describing: cappedNums))
    return cappedNums
}

class Deal {
    var playerNums: [Int] = []
    var dealerNums: [Int] = []

//    public init(playerNums: [Int], dealerNums: [Int]) {
//        self.playerNums = playerNums
//        self.dealerNums = dealerNums
//    }
    
    func getPlayerCounts() -> [Int] {
        var playerCounts: [Int] = []
        var playerCount = 0
        var aceCount = 0
        
        for num in playerNums {
            playerCount += num
            if (num == 1) { aceCount += 1 }
        }
        
        playerCounts.append(playerCount)
        
        if (aceCount > 0) {
            for i in 0..<aceCount {
                playerCounts.append(playerCount + (10 * (i + 1)))
            }
        }
        
        return playerCounts
    }
    
    func getDealerCount() -> Int {
        var dealerCount = 0
        
        for num in dealerNums {
            (num == 1) ? (dealerCount += 11) : (dealerCount += num)
        }
        
        return dealerCount
    }
    
    func didPlayerWin() -> Bool {
        for playerCount in getPlayerCounts() {
            if (playerCount < threshold + 1 && (playerCount > getDealerCount() || getDealerCount() > threshold)) {
                return true
            } else {
                continue
            }
        }
        
        return false
    }
    
    func isPlayerBust() -> Bool {
        for playerCount in getPlayerCounts() {
            if (playerCount < threshold + 1) {
                return false
            }
        }
        
        return true
    }
}

//class DealNode {
class Node {
    var deal: Deal
    var restNums: [Int] = []
    var childs: [Node] = []
    
    public init(deal: Deal, restNums: [Int]) {
        self.deal = deal
        self.restNums = restNums
    }
}

main()
