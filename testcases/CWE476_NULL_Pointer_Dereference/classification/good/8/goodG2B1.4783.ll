@global_var_48574 = external constant [21 x i8]
@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.474() local_unnamed_addr {
dec_label_pc_134e0:
  ret i32 1
}

define i32 @staticReturnsFalse.475() local_unnamed_addr {
dec_label_pc_134ef:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_13605:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = call i32 @staticReturnsFalse.475()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_13647, label %dec_label_pc_13636

dec_label_pc_13636:                               ; preds = %dec_label_pc_13605
  call void @printLine(ptr @global_var_48574)
  br label %dec_label_pc_1364f

dec_label_pc_13647:                               ; preds = %dec_label_pc_13605
  %3 = ptrtoint ptr %data_-32 to i64
  store i64 %3, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1364f

dec_label_pc_1364f:                               ; preds = %dec_label_pc_13647, %dec_label_pc_13636
  %4 = call i32 @staticReturnsTrue.474()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_1366c, label %dec_label_pc_1365d

dec_label_pc_1365d:                               ; preds = %dec_label_pc_1364f
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %6 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %7 = load i64, ptr %6, align 8
  call void @printLongLine(i64 %7)
  br label %dec_label_pc_1366c

dec_label_pc_1366c:                               ; preds = %dec_label_pc_1365d, %dec_label_pc_1364f
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_13681, label %dec_label_pc_1367c

dec_label_pc_1367c:                               ; preds = %dec_label_pc_1366c
  call void @__stack_chk_fail()
  br label %dec_label_pc_13681

dec_label_pc_13681:                               ; preds = %dec_label_pc_1367c, %dec_label_pc_1366c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

