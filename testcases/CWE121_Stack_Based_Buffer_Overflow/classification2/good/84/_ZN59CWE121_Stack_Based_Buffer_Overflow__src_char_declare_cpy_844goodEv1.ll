@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_efc0:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_f00a:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = bitcast ptr %result to ptr
  %3 = call ptr @strcpy(ptr nonnull %1, ptr %2)
  call void @printLine(ptr nonnull %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_f099, label %dec_label_pc_f094

dec_label_pc_f094:                                ; preds = %dec_label_pc_f00a
  call void @__stack_chk_fail()
  br label %dec_label_pc_f099

dec_label_pc_f099:                                ; preds = %dec_label_pc_f094, %dec_label_pc_f00a
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_f14a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-136 to ptr
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  call void @anon0(ptr %3, ptr nonnull %1)
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_f1db, label %dec_label_pc_f1a5

dec_label_pc_f1a5:                                ; preds = %dec_label_pc_f14a
  call void @anon1(ptr %3)
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_f1db

dec_label_pc_f1db:                                ; preds = %dec_label_pc_f1a5, %dec_label_pc_f14a
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_f1f0, label %dec_label_pc_f1eb

dec_label_pc_f1eb:                                ; preds = %dec_label_pc_f1db
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_f1f0

dec_label_pc_f1f0:                                ; preds = %dec_label_pc_f1eb, %dec_label_pc_f1db
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_f209:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_f22c, label %dec_label_pc_f220

dec_label_pc_f220:                                ; preds = %dec_label_pc_f209
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_f22c

dec_label_pc_f22c:                                ; preds = %dec_label_pc_f220, %dec_label_pc_f209
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

