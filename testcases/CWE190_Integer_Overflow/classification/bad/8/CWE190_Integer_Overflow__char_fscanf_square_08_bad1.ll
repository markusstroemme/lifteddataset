@global_var_6d258 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.351() local_unnamed_addr {
dec_label_pc_14b24:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_14b42:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @staticReturnsTrue.351()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_14b91, label %dec_label_pc_14b6f

dec_label_pc_14b6f:                               ; preds = %dec_label_pc_14b42
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6d258, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_14b91

dec_label_pc_14b91:                               ; preds = %dec_label_pc_14b6f, %dec_label_pc_14b42
  %5 = call i32 @staticReturnsTrue.351()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_14bbe, label %dec_label_pc_14b9f

dec_label_pc_14b9f:                               ; preds = %dec_label_pc_14b91
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = mul i8 %7, %7
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_14bbe

dec_label_pc_14bbe:                               ; preds = %dec_label_pc_14b9f, %dec_label_pc_14b91
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_14bd3, label %dec_label_pc_14bce

dec_label_pc_14bce:                               ; preds = %dec_label_pc_14bbe
  call void @__stack_chk_fail()
  br label %dec_label_pc_14bd3

dec_label_pc_14bd3:                               ; preds = %dec_label_pc_14bce, %dec_label_pc_14bbe
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

