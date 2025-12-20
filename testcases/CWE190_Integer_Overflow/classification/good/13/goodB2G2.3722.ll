@global_var_71100 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_16561:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %storemerge.in.off = add i32 %storemerge.in, 46339
  %11 = icmp ugt i32 %storemerge.in.off, 92678
  br i1 %11, label %dec_label_pc_16605, label %dec_label_pc_165ef

dec_label_pc_165ef:                               ; preds = %dec_label_pc_16561
  %12 = mul i32 %storemerge.in, %storemerge.in
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_16614

dec_label_pc_16605:                               ; preds = %dec_label_pc_16561
  call void @printLine(ptr @global_var_71100)
  br label %dec_label_pc_16614

dec_label_pc_16614:                               ; preds = %dec_label_pc_16605, %dec_label_pc_165ef
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

