@global_var_7a994 = external constant [4 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_12745:
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
  ret i32 %storemerge.in
}

define void @anon0() local_unnamed_addr {
dec_label_pc_127a7:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_127df, label %dec_label_pc_127cd

dec_label_pc_127cd:                               ; preds = %dec_label_pc_127a7
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_127df

dec_label_pc_127df:                               ; preds = %dec_label_pc_127cd, %dec_label_pc_127a7
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

