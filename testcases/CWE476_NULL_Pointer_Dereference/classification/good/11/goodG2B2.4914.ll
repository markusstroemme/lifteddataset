@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_13ca2:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %data_-32 = alloca ptr, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %3 = call i32 @globalReturnsTrue()
  %4 = call i32 @globalReturnsTrue()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_13cf8, label %dec_label_pc_13ce9

dec_label_pc_13ce9:                               ; preds = %dec_label_pc_13ca2
  %6 = icmp eq i32 %3, 0
  %7 = ptrtoint ptr %data_-32 to i64
  %spec.select = select i1 %6, i64 %1, i64 %7
  %8 = inttoptr i64 %spec.select to ptr
  %9 = load i64, ptr %8, align 8
  call void @printLongLine(i64 %9)
  br label %dec_label_pc_13cf8

dec_label_pc_13cf8:                               ; preds = %dec_label_pc_13ce9, %dec_label_pc_13ca2
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %2, %10
  br i1 %11, label %dec_label_pc_13d0d, label %dec_label_pc_13d08

dec_label_pc_13d08:                               ; preds = %dec_label_pc_13cf8
  call void @__stack_chk_fail()
  br label %dec_label_pc_13d0d

dec_label_pc_13d0d:                               ; preds = %dec_label_pc_13d08, %dec_label_pc_13cf8
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3d03f:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

