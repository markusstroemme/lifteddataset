@global_var_83aba = external constant [4 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1a29e:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83aba, ptr nonnull %stack_var_-24)
  call void @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1a304, label %dec_label_pc_1a2ff

dec_label_pc_1a2ff:                               ; preds = %dec_label_pc_1a29e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a304

dec_label_pc_1a304:                               ; preds = %dec_label_pc_1a2ff, %dec_label_pc_1a29e
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1a3db:
  %0 = ptrtoint ptr %dataPtr to i64
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

