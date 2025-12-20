@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_9190c:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  %1 = call i64 @_Znam(i64 10)
  store i64 %1, ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_91942:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = ptrtoint ptr %stack_var_-27 to i64
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = call ptr @strncpy(ptr nonnull %2, ptr nonnull %2, i32 %4)
  call void @printLine(ptr nonnull %2)
  %6 = and i64 %1, 4294967288
  %7 = inttoptr i64 %6 to ptr
  call void @_ZdaPv(ptr nonnull %stack_var_-27, ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_919de, label %dec_label_pc_919d9

dec_label_pc_919d9:                               ; preds = %dec_label_pc_91942
  call void @__stack_chk_fail()
  br label %dec_label_pc_919de

dec_label_pc_919de:                               ; preds = %dec_label_pc_919d9, %dec_label_pc_91942
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_91ab4:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, ptr null)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_91b2a, label %dec_label_pc_91af4

dec_label_pc_91af4:                               ; preds = %dec_label_pc_91ab4
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_91b2a

dec_label_pc_91b2a:                               ; preds = %dec_label_pc_91af4, %dec_label_pc_91ab4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

