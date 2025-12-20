@global_var_71028 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_15cd1:
  %0 = load i32, ptr @global_var_a9070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_15d82, label %dec_label_pc_15d38

dec_label_pc_15d38:                               ; preds = %dec_label_pc_15cd1
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %.pr = load i32, ptr @global_var_a9070, align 4
  %6 = icmp eq i32 %.pr, 0
  br i1 %6, label %dec_label_pc_15d82, label %dec_label_pc_15d42

dec_label_pc_15d42:                               ; preds = %dec_label_pc_15d38
  %7 = urem i32 %2, 2
  %8 = icmp eq i32 %7, 0
  %9 = mul i32 %3, 1073741824
  %10 = mul i32 %4, 32768
  %11 = xor i32 %10, %9
  %12 = xor i32 %11, %5
  %13 = sext i1 %8 to i32
  %storemerge.in = xor i32 %12, %13
  %stack_var_-32.0.off = add i32 %storemerge.in, 46339
  %14 = icmp ugt i32 %stack_var_-32.0.off, 92678
  br i1 %14, label %dec_label_pc_15d73, label %dec_label_pc_15d5d

dec_label_pc_15d5d:                               ; preds = %dec_label_pc_15d42
  %15 = mul i32 %storemerge.in, %storemerge.in
  call void @printIntLine(i32 %15)
  br label %dec_label_pc_15d82

dec_label_pc_15d73:                               ; preds = %dec_label_pc_15d42
  call void @printLine(ptr @global_var_71028)
  br label %dec_label_pc_15d82

dec_label_pc_15d82:                               ; preds = %dec_label_pc_15cd1, %dec_label_pc_15d73, %dec_label_pc_15d5d, %dec_label_pc_15d38
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

