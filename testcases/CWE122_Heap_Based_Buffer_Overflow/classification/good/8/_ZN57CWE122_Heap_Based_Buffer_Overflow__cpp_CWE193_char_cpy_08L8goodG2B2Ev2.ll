@0 = external global i32

define i32 @staticReturnsTrue.161() local_unnamed_addr {
dec_label_pc_6f03a:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6f1a9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.161()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_6f1e8, label %dec_label_pc_6f1da

dec_label_pc_6f1da:                               ; preds = %dec_label_pc_6f1a9
  %5 = call i64 @_Znam(i64 11)
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_6f1e8

dec_label_pc_6f1e8:                               ; preds = %dec_label_pc_6f1da, %dec_label_pc_6f1a9
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call ptr @strcpy(ptr %stack_var_-40.0.reload, ptr nonnull %7)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %9 = icmp eq ptr %stack_var_-40.0.reload, null
  br i1 %9, label %dec_label_pc_6f232, label %dec_label_pc_6f226

dec_label_pc_6f226:                               ; preds = %dec_label_pc_6f1e8
  %10 = ptrtoint ptr %stack_var_-27 to i64
  %11 = bitcast ptr %stack_var_-40.0.reload to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_6f232

dec_label_pc_6f232:                               ; preds = %dec_label_pc_6f226, %dec_label_pc_6f1e8
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_6f247, label %dec_label_pc_6f242

dec_label_pc_6f242:                               ; preds = %dec_label_pc_6f232
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6f247

dec_label_pc_6f247:                               ; preds = %dec_label_pc_6f242, %dec_label_pc_6f232
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

