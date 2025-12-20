@global_var_83970 = external constant [4 x i8]
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc144 = external local_unnamed_addr global i32

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_185d5:
  %0 = load i32, ptr @global_var_bc144, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_18608, label %dec_label_pc_185ef

dec_label_pc_185ef:                               ; preds = %dec_label_pc_185d5
  %2 = add i64 %data, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_18608

dec_label_pc_18608:                               ; preds = %dec_label_pc_185ef, %dec_label_pc_185d5
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1860b:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83970, ptr nonnull %stack_var_-24)
  store i32 1, ptr @global_var_bc144, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon1(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1867b, label %dec_label_pc_18676

dec_label_pc_18676:                               ; preds = %dec_label_pc_1860b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1867b

dec_label_pc_1867b:                               ; preds = %dec_label_pc_18676, %dec_label_pc_1860b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

