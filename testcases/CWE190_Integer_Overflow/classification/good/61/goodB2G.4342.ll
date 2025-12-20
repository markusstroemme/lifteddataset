@global_var_71570 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_18cd5:
  %0 = call i32 @anon0(i32 0)
  %.off = add i32 %0, 46339
  %1 = icmp ugt i32 %.off, 92678
  br i1 %1, label %dec_label_pc_18d25, label %dec_label_pc_18d10

dec_label_pc_18d10:                               ; preds = %dec_label_pc_18cd5
  %2 = mul i32 %0, %0
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_18d35

dec_label_pc_18d25:                               ; preds = %dec_label_pc_18cd5
  call void @printLine(ptr @global_var_71570)
  br label %dec_label_pc_18d35

dec_label_pc_18d35:                               ; preds = %dec_label_pc_18d25, %dec_label_pc_18d10
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_18dd0:
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

