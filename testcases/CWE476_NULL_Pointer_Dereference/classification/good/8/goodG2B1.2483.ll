@global_var_47fbc = external constant [21 x i8]
@global_var_4a585 = external constant [5 x i8]

define i32 @staticReturnsTrue.244() local_unnamed_addr {
dec_label_pc_c216:
  ret i32 1
}

define i32 @staticReturnsFalse.245() local_unnamed_addr {
dec_label_pc_c225:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_c33b:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = call i32 @staticReturnsFalse.245()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_c37d, label %dec_label_pc_c36c

dec_label_pc_c36c:                                ; preds = %dec_label_pc_c33b
  call void @printLine(ptr @global_var_47fbc)
  br label %dec_label_pc_c385

dec_label_pc_c37d:                                ; preds = %dec_label_pc_c33b
  %3 = ptrtoint ptr %data_-32 to i64
  store i64 %3, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c385

dec_label_pc_c385:                                ; preds = %dec_label_pc_c37d, %dec_label_pc_c36c
  %4 = call i32 @staticReturnsTrue.244()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_c3a2, label %dec_label_pc_c393

dec_label_pc_c393:                                ; preds = %dec_label_pc_c385
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  %6 = inttoptr i64 %stack_var_-24.0.reload to ptr
  %7 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %7)
  br label %dec_label_pc_c3a2

dec_label_pc_c3a2:                                ; preds = %dec_label_pc_c393, %dec_label_pc_c385
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_c3b7, label %dec_label_pc_c3b2

dec_label_pc_c3b2:                                ; preds = %dec_label_pc_c3a2
  call void @__stack_chk_fail()
  br label %dec_label_pc_c3b7

dec_label_pc_c3b7:                                ; preds = %dec_label_pc_c3b2, %dec_label_pc_c3a2
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

