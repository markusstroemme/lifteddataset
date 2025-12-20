@global_var_721c0 = external constant [4 x i8]
@global_var_721c8 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_38966:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_389bb, label %dec_label_pc_38997

dec_label_pc_38997:                               ; preds = %dec_label_pc_38966
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_721c0, ptr nonnull %stack_var_-40)
  br label %dec_label_pc_389c3

dec_label_pc_389bb:                               ; preds = %dec_label_pc_38966
  store i64 2, ptr %stack_var_-40, align 8
  br label %dec_label_pc_389c3

dec_label_pc_389c3:                               ; preds = %dec_label_pc_389bb, %dec_label_pc_38997
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %stack_var_-40, align 8
  %8 = icmp slt i64 %7, 1
  br i1 %6, label %dec_label_pc_389f3, label %dec_label_pc_389d1

dec_label_pc_389d1:                               ; preds = %dec_label_pc_389c3
  br i1 %8, label %dec_label_pc_38a37, label %dec_label_pc_389da

dec_label_pc_389da:                               ; preds = %dec_label_pc_389d1
  %9 = mul i64 %7, 2
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_38a37

dec_label_pc_389f3:                               ; preds = %dec_label_pc_389c3
  br i1 %8, label %dec_label_pc_38a37, label %dec_label_pc_389fc

dec_label_pc_389fc:                               ; preds = %dec_label_pc_389f3
  %10 = icmp sgt i64 %7, 4611686018427387902
  br i1 %10, label %dec_label_pc_38a28, label %dec_label_pc_38a0f

dec_label_pc_38a0f:                               ; preds = %dec_label_pc_389fc
  %11 = mul i64 %7, 2
  call void @printLongLongLine(i64 %11)
  br label %dec_label_pc_38a37

dec_label_pc_38a28:                               ; preds = %dec_label_pc_389fc
  call void @printLine(ptr @global_var_721c8)
  br label %dec_label_pc_38a37

dec_label_pc_38a37:                               ; preds = %dec_label_pc_38a28, %dec_label_pc_38a0f, %dec_label_pc_389f3, %dec_label_pc_389da, %dec_label_pc_389d1
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_38a4c, label %dec_label_pc_38a47

dec_label_pc_38a47:                               ; preds = %dec_label_pc_38a37
  call void @__stack_chk_fail()
  br label %dec_label_pc_38a4c

dec_label_pc_38a4c:                               ; preds = %dec_label_pc_38a47, %dec_label_pc_38a37
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5a542:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

