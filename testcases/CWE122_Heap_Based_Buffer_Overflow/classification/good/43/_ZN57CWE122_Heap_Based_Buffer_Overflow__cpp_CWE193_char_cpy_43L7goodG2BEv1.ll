@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_711ad:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 11)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_711d4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = load ptr, ptr %stack_var_-40, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  %5 = load ptr, ptr %stack_var_-40, align 8
  call void @printLine(ptr %5)
  %6 = load ptr, ptr %stack_var_-40, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_7124f, label %dec_label_pc_71243

dec_label_pc_71243:                               ; preds = %dec_label_pc_711d4
  %8 = ptrtoint ptr %stack_var_-27 to i64
  %9 = bitcast ptr %6 to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_7124f

dec_label_pc_7124f:                               ; preds = %dec_label_pc_71243, %dec_label_pc_711d4
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_71264, label %dec_label_pc_7125f

dec_label_pc_7125f:                               ; preds = %dec_label_pc_7124f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_71264

dec_label_pc_71264:                               ; preds = %dec_label_pc_7125f, %dec_label_pc_7124f
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

