@global_var_720d6 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1e562:
  %stack_var_-26 = alloca i64, align 8
  %stack_var_-28 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-28, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_720d6, ptr nonnull %stack_var_-28)
  %3 = bitcast ptr %stack_var_-26 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1e5ce, label %dec_label_pc_1e5c9

dec_label_pc_1e5c9:                               ; preds = %dec_label_pc_1e562
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e5ce

dec_label_pc_1e5ce:                               ; preds = %dec_label_pc_1e5c9, %dec_label_pc_1e562
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1e6af:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = add i16 %3, 1
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

