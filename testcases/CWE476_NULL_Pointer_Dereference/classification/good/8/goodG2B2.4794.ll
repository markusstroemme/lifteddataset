@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.474() local_unnamed_addr {
dec_label_pc_134e0:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13683:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %data_-32 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %3 = call i32 @staticReturnsTrue.474()
  %4 = call i32 @staticReturnsTrue.474()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_136d9, label %dec_label_pc_136ca

dec_label_pc_136ca:                               ; preds = %dec_label_pc_13683
  %6 = icmp eq i32 %3, 0
  %7 = ptrtoint ptr %data_-32 to i64
  %spec.select = select i1 %6, i64 %1, i64 %7
  %8 = inttoptr i64 %spec.select to ptr
  %9 = load i64, ptr %8, align 8
  call void @printLongLine(i64 %9)
  br label %dec_label_pc_136d9

dec_label_pc_136d9:                               ; preds = %dec_label_pc_136ca, %dec_label_pc_13683
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %2, %10
  br i1 %11, label %dec_label_pc_136ee, label %dec_label_pc_136e9

dec_label_pc_136e9:                               ; preds = %dec_label_pc_136d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_136ee

dec_label_pc_136ee:                               ; preds = %dec_label_pc_136e9, %dec_label_pc_136d9
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

