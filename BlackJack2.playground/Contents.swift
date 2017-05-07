let dealUnit = 4
let threshold = 21
let depth = 2

//let cardNums = [10, 12, 4, 12, 9, 7, 7, 9, 7, 10, 5, 12, 4, 6, 8, 5, 13, 6, 1, 2, 5, 10, 8, 12, 6, 10, 13, 2, 1, 7, 9, 10]
//let cardNums = [10, 5, 12, 4, 6, 8, 5, 13, 6, 1, 2, 5, 10, 8, 12, 6, 10, 13, 2, 1, 7, 9, 10]

let cardNums = [10, 12, 4, 12, 9, 7, 7, 9, 7, 10, 5, 12, 4, 6, 8, 5, 13, 6, 1, 2, 5, 10, 8, 12, 6, 10, 13, 2, 1, 7, 9, 10, 3, 13, 10, 11, 3, 10, 10, 11, 7, 6, 4, 11, 7, 9, 9, 10, 10, 3, 5, 10, 2, 11, 4, 6, 4, 2, 9, 12, 2, 8, 7, 12, 3, 1, 6, 9, 5, 10, 13, 11, 12, 10, 6, 1, 3, 10, 12, 9, 6, 9, 5, 3, 6, 12, 2, 12, 12, 6, 8, 5, 12, 8, 10, 12, 11, 9, 12, 5, 11, 9, 13, 4, 11, 7, 11, 8, 12, 1, 8, 6, 5, 7, 1, 10, 3, 4, 11, 10, 4, 12, 1, 1, 9, 1, 12, 1, 11, 5, 6, 10, 11, 6, 7, 5, 12, 6, 10, 7, 7, 10, 4, 13, 2, 3, 1, 1, 11, 13, 11, 10, 3, 2, 3, 8, 7, 8, 10, 9, 9, 12, 10, 11, 10, 11, 1, 5, 12, 2, 10, 7, 1, 8, 9, 3, 12, 10, 10, 5, 10, 1, 4, 6, 2, 4, 7, 1, 1, 5, 11, 11, 7, 9, 7, 6, 1, 8, 9, 2, 13, 5, 12, 5, 13, 12, 3, 2, 7, 11, 6, 12, 5, 12, 5, 11, 3, 9, 13, 7, 12, 2, 9, 3, 5, 2, 4, 9, 8, 2, 4, 12, 13, 8, 9, 12, 7, 3, 7, 10, 11, 5, 9, 1, 13, 7, 11, 5, 6, 5, 11, 3, 1, 13, 8, 9, 11, 7, 5, 6, 6, 12, 4, 8, 13, 5, 5, 10, 2, 8, 7, 2, 6, 4, 1, 13, 9, 11, 5, 7, 6, 4, 8, 6, 7, 8, 10, 6, 4, 7, 12, 2, 3, 5, 4, 5, 4, 5, 2, 7, 1, 8, 3, 7, 12, 3, 9, 3, 10, 8, 5, 8, 3, 3, 9, 13, 2, 12, 12, 9, 11, 2, 4, 2, 9, 7, 3, 8, 4, 9, 3, 6, 3, 7, 5, 13, 13, 7, 9, 8, 8, 12, 2, 1, 9, 2, 12, 4, 13, 3, 10, 11, 13, 2, 10, 5, 7, 10, 12, 1, 12, 6, 10, 2, 7, 5, 2, 9, 6, 13, 3, 12, 4, 7, 2, 13, 7, 13, 4, 10, 8, 1, 10, 13, 4, 10, 4, 10, 3, 2, 2, 13, 3, 8, 1, 2, 9, 8, 2, 1, 8, 5, 3, 3, 7, 12, 10, 13, 5, 9, 3, 4, 7, 1, 9, 1, 12, 10, 13, 6, 5, 10, 2, 12, 13, 4, 12, 7, 11, 12, 13, 6, 11, 3, 2, 7, 6, 4, 2, 9, 13, 12, 9, 6, 9, 3, 10, 13, 10, 12, 5, 12, 2, 12, 9, 6, 13, 7, 13, 5, 3, 12, 3, 9, 12, 7, 4, 11, 3, 3, 12, 8, 10, 8, 7, 8, 9, 5, 7, 8, 13, 3, 8, 7, 5, 5, 8, 9, 1, 13, 8, 1, 2, 1, 4, 5, 4, 12, 9, 5, 10, 1, 8, 3, 1, 13, 10, 13, 12, 6, 9, 10, 2, 6, 6, 4, 12, 6, 2, 1, 4, 11, 11, 7, 1, 2, 5, 1, 11, 9, 2, 10, 12, 11, 10, 12, 8, 2, 1, 5, 4, 2, 12, 9, 5, 7, 3, 6, 9, 3, 3, 10, 5, 9, 12, 4, 2, 8, 2, 3, 8, 11, 12, 10, 2, 9, 6, 4, 9, 5, 5, 6, 5, 8, 9, 5, 2, 5, 2, 6, 4, 12, 6, 8, 13, 4, 4, 13, 5, 9, 1, 7, 13, 4, 9, 8, 7, 10, 2, 3, 5, 6, 7, 5, 3, 7, 13, 7, 13, 1, 4, 2, 7, 8, 8, 3, 6, 8, 5, 5, 8, 6, 3, 6, 6, 9, 9, 5, 13, 10, 8, 2, 11, 4, 10, 13, 10, 3, 11, 8, 10, 6, 12, 7, 4, 7, 7, 8, 1, 9, 2, 3, 11, 7, 10, 11, 9, 12, 3, 8, 13, 5, 3, 11, 8, 6, 13, 1, 11, 10, 8, 7, 4, 11, 9, 6, 6, 10, 13, 9, 4, 5, 3, 6, 10, 13, 1, 6, 11, 11, 7, 6, 13, 10, 13, 9, 9, 4, 1, 3, 3, 10, 11, 13, 4, 2, 4, 4, 1, 12, 2, 2, 7, 12, 11, 12, 1, 1, 7, 1, 6, 2, 2, 6, 5, 4, 11, 9, 2, 13, 5, 11, 13, 4, 13, 6, 2, 9, 8, 13, 2, 2, 2, 11, 3, 12, 6, 5, 5, 6, 4, 7, 1, 13, 9, 8, 1, 10, 13, 10, 6, 8, 2, 10, 7, 3, 9, 1, 7, 8, 1, 3, 9, 3, 1, 8, 1, 8, 10, 6, 3, 9, 2, 2, 10, 7, 11, 9, 3, 5, 7, 2, 1, 9, 11, 7, 3, 10, 3, 6, 2, 13, 10, 8, 10, 8, 1, 7, 13, 1, 8, 13, 2, 13, 8, 8, 4, 5, 11, 3, 4, 6, 12, 6, 10, 9, 13, 3, 1, 2, 1, 1, 6, 1, 1, 8, 1, 8, 13, 13, 8, 2, 7, 10, 6, 13, 6, 4, 4, 5, 8, 9, 2, 6, 5, 7, 10, 8, 11, 3, 11, 8, 4, 3, 7, 9, 9, 2, 5, 13, 7, 6, 6, 3, 2, 13, 8, 9, 7, 5, 9, 4, 7, 13, 11, 3, 11, 13, 13, 2, 8, 12, 7, 7, 6, 7, 9, 1, 7, 12, 2, 8, 6, 11, 8, 9, 10, 13, 13, 5, 8, 12, 9, 11, 6, 12, 5, 5, 13, 3, 12, 6, 5, 7, 3, 9, 4, 9, 1, 1, 11, 11, 4, 5, 8, 9, 12, 1, 7, 13, 11, 4, 10, 8, 8, 9, 2, 1, 8, 12, 13, 4, 8, 3, 2, 5, 1, 1, 8, 13, 4, 1, 11, 12, 13, 7, 12, 11, 11, 10, 11, 6, 5, 11, 5, 12, 2, 5, 3, 13, 7, 7, 4, 6, 13, 8, 1, 6, 7, 4, 7, 2, 9, 5, 6, 1, 11, 12, 1, 8]




//func getWinCount(depth: Int, nums: [Int], count: Int) -> Int {
//func getWinCount(depth: Int, nums: [Int], counts: [Int]) -> Int {
//func getWinCount(depth: Int, nums: [Int], count: Int, hit: Bool) -> Int {
//    if (depth > 0) {
//        //////////////////////
//        // No hit in first deal
//        //////////////////////
//        if (!hit) {
//            let firstNums_NoHit = ([Int])(nums[0...3])
//            let restNums_NoHit = ([Int])(nums[4...(nums.count - 1)])
//            
//            let deal_NoHit = Deal()
//            deal_NoHit.playerNums = [firstNums_NoHit[0], firstNums_NoHit[2]]
//            deal_NoHit.dealerNums = [firstNums_NoHit[1], firstNums_NoHit[3]]
//            
//            // No hit -> No hit
//            // No Hit -> Hit
//            // RECUR
////            var winCount_NoHit = ((deal_NoHit.didPlayerWin()) ? 1 : 0) + getWinCount(depth: depth - 1, nums: restNums_NoHit, counts: counts)
//            var winCount_NoHit = ((deal_NoHit.didPlayerWin()) ? 1 : 0) + getWinCount(depth: depth - 1, nums: restNums_NoHit,
//            return winCount_NoHit
//        }
//            //////////////////////
//            // Hit in first deal
//            //////////////////////
//        else {
//            let firstNums_Hit = ([Int])(nums[0...4])
//            let restNums_Hit = ([Int])(nums[5...(nums.count - 1)])
//            
//            let deal_Hit = Deal()
//            deal_Hit.playerNums = [firstNums_Hit[0], firstNums_Hit[2], firstNums_Hit[4]]
//            deal_Hit.dealerNums = [firstNums_Hit[1], firstNums_Hit[3]]
//            
//            // Hit -> No hit
//            // Hit -> Hit
//            // RECUR
//            var winCount_Hit = ((deal_Hit.didPlayerWin()) ? 1 : 0) + getWinCount(depth: depth - 1, nums: restNums_Hit, counts: counts)
//            counts.append(winCount_Hit)
//        }
//    } else {
//        var winCount = play(count: 0, nums: nums)
//        return winCount
//    }
//}

func createDealNode(depth: Int, node: DealNode) -> DealNode? {
    if (depth > 0) {
        let nums = node.restNums
        var deal = Deal()
        
        for (index, num) in nums.enumerated() {
//            print("# index[" + String(describing: index) + "]: " + String(describing: num))
            
            if (index < dealUnit) {
                if (index % 2 == 0) {
                    deal.playerNums.append(num)
                } else {
                    deal.dealerNums.append(num)
                }
                
                if (index == dealUnit - 1) {
                    if (index + 1 >= nums.count - 1) {
                        break
                    }
                    
                    // Add child node
                    let restNums: [Int] = ([Int])(nums[(index + 1)...(nums.count - 1)])
                    let childNode = DealNode(deal: deal, restNums: restNums)
                    node.childs.append(childNode)
                    
                    print("\nplayer nums: " + String(describing: deal.playerNums))
                    print("dealer nums: " + String(describing: deal.dealerNums))
                }
            } else {
                if (deal.isPlayerBust()) {
                    print("Busted..")
                    // create node for rest deals
                    let restNums: [Int] = ([Int])(nums[(index)...(nums.count - 1)])
                    
                    if restNums.count > dealUnit - 1 {
                        for childNode in node.childs {
                            createDealNode(depth: depth - 1, node: childNode)
                        }
                    }
                    
                    break
                } else {
                    deal.playerNums.append(num)
                    
                    if (index + 1 >= nums.count - 1) {
                        break
                    }
                    
                    // Add child node
                    let restNums: [Int] = ([Int])(nums[(index + 1)...(nums.count - 1)])
//                    let childNode = DealNode(playerNums: playerNums, dealerNums: dealerNums, restNums: restNums)
                    let childNode = DealNode(deal: deal, restNums: restNums)
                    node.childs.append(childNode)
                    
                    print("\nplayer nums: " + String(describing: deal.playerNums))
                    print("dealer nums: " + String(describing: deal.dealerNums))
                }
            }
        }
        
        return node
    } else {
        return nil
    }
}

func getWinCount(node: DealNode) {
    
}

func main() {
    let nums = cap(nums: cardNums)

    var rootNode = DealNode(deal: Deal(), restNums: nums)
    createDealNode(depth: depth, node: rootNode)

    var winCounts: [Int] = []
    
    //////////////////////
    // No hit in first deal
    //////////////////////
    let firstNums_NoHit = ([Int])(nums[0...3])
    let restNums_NoHit = ([Int])(nums[4...(nums.count - 1)])
    
    let deal_NoHit = Deal()
    deal_NoHit.playerNums = [firstNums_NoHit[0], firstNums_NoHit[2]]
    deal_NoHit.dealerNums = [firstNums_NoHit[1], firstNums_NoHit[3]]
    
    // No hit -> No hit
    let firstNums_NoHit_NoHit = ([Int])(restNums_NoHit[0...3])
    let restNums_NoHit_NoHit = ([Int])(restNums_NoHit[4...(restNums_NoHit.count - 1)])
    
    let deal_NoHit_NoHit = Deal()
    deal_NoHit_NoHit.playerNums = [firstNums_NoHit_NoHit[0], firstNums_NoHit_NoHit[2]]
    deal_NoHit_NoHit.dealerNums = [firstNums_NoHit_NoHit[1], firstNums_NoHit_NoHit[3]]
    
    var winCount_NoHit_NoHit = ((deal_NoHit.didPlayerWin()) ? 1 : 0) + ((deal_NoHit_NoHit.didPlayerWin()) ? 1 : 0) + play(count: 0, nums: restNums_NoHit_NoHit)
    winCounts.append(winCount_NoHit_NoHit)
    print("winCount_NoHit_NoHit: " + String(winCount_NoHit_NoHit))
    
    // No Hit -> Hit
    let firstNums_NoHit_Hit = ([Int])(restNums_NoHit[0...4])
    let restNums_NoHit_Hit = ([Int])(restNums_NoHit[5...(restNums_NoHit.count - 1)])
    
    let deal_NoHit_Hit = Deal()
    deal_NoHit_Hit.playerNums = [firstNums_NoHit_Hit[0], firstNums_NoHit_Hit[2], firstNums_NoHit_Hit[4]]
    deal_NoHit_Hit.dealerNums = [firstNums_NoHit_Hit[1], firstNums_NoHit_Hit[3]]
    
    var winCount_NoHit_Hit = ((deal_NoHit.didPlayerWin()) ? 1 : 0) + ((deal_NoHit_Hit.didPlayerWin()) ? 1 : 0) + play(count: 0, nums: restNums_NoHit_Hit)
    winCounts.append(winCount_NoHit_Hit)
    print("winCount_NoHit_Hit: " + String(winCount_NoHit_NoHit))
    
    //////////////////////
    // Hit in first deal
    //////////////////////
    let firstNums_Hit = ([Int])(nums[0...4])
    let restNums_Hit = ([Int])(nums[5...(nums.count - 1)])
    
    let deal_Hit = Deal()
    deal_Hit.playerNums = [firstNums_Hit[0], firstNums_Hit[2], firstNums_Hit[4]]
    deal_Hit.dealerNums = [firstNums_Hit[1], firstNums_Hit[3]]
    
    // Hit -> No hit
    let firstNums_Hit_NoHit = ([Int])(restNums_Hit[0...3])
    let restNums_Hit_NoHit = ([Int])(restNums_Hit[4...(restNums_Hit.count - 1)])
    
    let deal_Hit_NoHit = Deal()
    deal_Hit_NoHit.playerNums = [firstNums_Hit_NoHit[0], firstNums_Hit_NoHit[2]]
    deal_Hit_NoHit.dealerNums = [firstNums_Hit_NoHit[1], firstNums_Hit_NoHit[3]]
    
    var winCount_Hit_NoHit = ((deal_Hit.didPlayerWin()) ? 1 : 0) + ((deal_Hit_NoHit.didPlayerWin()) ? 1 : 0) + play(count: 0, nums: restNums_Hit_NoHit)
    winCounts.append(winCount_Hit_NoHit)
    print("winCount_Hit_NoHit: " + String(winCount_Hit_NoHit))
    
    // Hit -> Hit
    let firstNums_Hit_Hit = ([Int])(restNums_Hit[0...4])
    let restNums_Hit_Hit = ([Int])(restNums_Hit[5...(restNums_Hit.count - 1)])
    
    let deal_Hit_Hit = Deal()
    deal_Hit_Hit.playerNums = [firstNums_Hit_Hit[0], firstNums_Hit_Hit[2], firstNums_Hit_Hit[4]]
    deal_Hit_Hit.dealerNums = [firstNums_Hit_Hit[1], firstNums_Hit_Hit[3]]
    
    var winCount_Hit_Hit = ((deal_Hit.didPlayerWin()) ? 1 : 0) + ((deal_Hit_Hit.didPlayerWin()) ? 1 : 0) + play(count: 0, nums: restNums_Hit_Hit)
    winCounts.append(winCount_Hit_Hit)
    print("winCount_Hit_Hit: " + String(winCount_Hit_Hit))
    
    
    // Total
    //    var winCount = play(count: 0, nums: cap(nums: nums))
    //    print("\nwinCount: " + String(winCount))
    
    //    print(play(count: 0, nums: cap(nums: nums)))
    
    //    let restNums: [Int] = ([Int])(nums[5...(nums.count - 1)])
    //    print(play(count: 0, nums: cap(nums: restNums)))
}

func play(count: Int, nums: [Int]) -> Int {
    var winCount = count
    let deal = Deal()
    deal.playerNums = [nums[0], nums[2]]
    deal.dealerNums = [nums[1], nums[3]]
    
    if (deal.didPlayerWin()) {
        //        print("\nWin at first!")
        //        print("player nums: " + String(describing: deal.playerNums))
        //        print("dealer nums: " + String(describing: deal.dealerNums))
        
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
            //            print("\nWin after hit count:" + String(hitCount))
            //            print("player nums: " + String(describing: deal.playerNums))
            //            print("dealer nums: " + String(describing: deal.dealerNums))
            
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
    var hitCount = count + 1
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
    
//    print("# nums: " + String(describing: cappedNums))
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

class DealNode {
    var deal: Deal
    var restNums: [Int] = []
    var childs: [DealNode] = []
    
    public init(deal: Deal, restNums: [Int]) {
        self.deal = deal
        self.restNums = restNums
    }
}

main()
