@global_var_71d76 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_36543:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x i64], align 8
  %0 = call i64 @__readfsqword(i64 40)
  store [5 x i64] [i64 0, i64 undef, i64 undef, i64 undef, i64 undef], ptr %dataArray_-64, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71d76, ptr nonnull %dataArray_-64)
  call void @anon1(ptr nonnull %stack_var_-56)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_365b1, label %dec_label_pc_365ac

dec_label_pc_365ac:                               ; preds = %dec_label_pc_36543
  call void @__stack_chk_fail()
  br label %dec_label_pc_365b1

dec_label_pc_365b1:                               ; preds = %dec_label_pc_365ac, %dec_label_pc_36543
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_36698:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, 1
  call void @printLongLongLine(i64 %4)
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

