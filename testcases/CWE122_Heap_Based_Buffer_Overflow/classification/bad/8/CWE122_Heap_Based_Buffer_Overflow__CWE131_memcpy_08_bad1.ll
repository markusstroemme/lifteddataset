@global_var_44d70 = external constant [4 x i8]

define i32 @staticReturnsTrue.106() local_unnamed_addr {
dec_label_pc_cd27:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_cd45:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.106()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_cd95, label %dec_label_pc_cd76

dec_label_pc_cd76:                                ; preds = %dec_label_pc_cd45
  %3 = call ptr @malloc(i32 10)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_cd95, label %dec_label_pc_cd8b

dec_label_pc_cd8b:                                ; preds = %dec_label_pc_cd76
  call void @exit(i32 -1)
  unreachable

dec_label_pc_cd95:                                ; preds = %dec_label_pc_cd76, %dec_label_pc_cd45
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %7 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-56, i32 40)
  %9 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  call void @free(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_ce03, label %dec_label_pc_cdfe

dec_label_pc_cdfe:                                ; preds = %dec_label_pc_cd95
  call void @__stack_chk_fail()
  br label %dec_label_pc_ce03

dec_label_pc_ce03:                                ; preds = %dec_label_pc_cdfe, %dec_label_pc_cd95
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

