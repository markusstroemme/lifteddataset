@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e718:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_e75a, label %dec_label_pc_e750

dec_label_pc_e750:                                ; preds = %dec_label_pc_e718
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e75a:                                ; preds = %dec_label_pc_e718
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_e783, label %dec_label_pc_e77e

dec_label_pc_e77e:                                ; preds = %dec_label_pc_e75a
  call void @__stack_chk_fail()
  br label %dec_label_pc_e783

dec_label_pc_e783:                                ; preds = %dec_label_pc_e77e, %dec_label_pc_e75a
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_e807:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %5 = inttoptr i64 %4 to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-56, i32 40)
  %7 = inttoptr i64 %4 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  call void @free(ptr %5)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_e8a0, label %dec_label_pc_e89b

dec_label_pc_e89b:                                ; preds = %dec_label_pc_e807
  call void @__stack_chk_fail()
  br label %dec_label_pc_e8a0

dec_label_pc_e8a0:                                ; preds = %dec_label_pc_e89b, %dec_label_pc_e807
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

