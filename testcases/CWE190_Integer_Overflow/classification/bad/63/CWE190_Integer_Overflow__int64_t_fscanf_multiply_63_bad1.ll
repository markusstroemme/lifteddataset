@global_var_7275a = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3b70b:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_7275a, ptr nonnull %stack_var_-24)
  call void @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3b771, label %dec_label_pc_3b76c

dec_label_pc_3b76c:                               ; preds = %dec_label_pc_3b70b
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b771

dec_label_pc_3b771:                               ; preds = %dec_label_pc_3b76c, %dec_label_pc_3b70b
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_3b848:
  %0 = icmp slt ptr %dataPtr, inttoptr (i64 1 to ptr)
  br i1 %0, label %dec_label_pc_3b881, label %dec_label_pc_3b86a

dec_label_pc_3b86a:                               ; preds = %dec_label_pc_3b848
  %1 = ptrtoint ptr %dataPtr to i64
  %2 = mul i64 %1, 2
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_3b881

dec_label_pc_3b881:                               ; preds = %dec_label_pc_3b86a, %dec_label_pc_3b848
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

