@global_var_67a58 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c0b0 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1123a:
  %0 = load i32, ptr @global_var_9c0b0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_11266, label %dec_label_pc_11253

dec_label_pc_11253:                               ; preds = %dec_label_pc_1123a
  %2 = add i32 %data, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_11266

dec_label_pc_11266:                               ; preds = %dec_label_pc_11253, %dec_label_pc_1123a
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_11269:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67a58, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_9c0b0, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon1(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_112d6, label %dec_label_pc_112d1

dec_label_pc_112d1:                               ; preds = %dec_label_pc_11269
  call void @__stack_chk_fail()
  br label %dec_label_pc_112d6

dec_label_pc_112d6:                               ; preds = %dec_label_pc_112d1, %dec_label_pc_11269
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

