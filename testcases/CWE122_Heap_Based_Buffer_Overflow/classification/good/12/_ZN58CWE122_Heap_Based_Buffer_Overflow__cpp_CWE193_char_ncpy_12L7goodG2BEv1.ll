@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8d11f:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = call i64 @_Znam(i64 11)
  %storemerge = inttoptr i64 %2 to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %3 = bitcast ptr %stack_var_-27 to ptr
  %4 = call i32 @strlen(ptr nonnull %3)
  %5 = add i32 %4, 1
  %6 = call ptr @strncpy(ptr %storemerge, ptr nonnull %3, i32 %5)
  call void @printLine(ptr %storemerge)
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %dec_label_pc_8d1c8, label %dec_label_pc_8d1bc

dec_label_pc_8d1bc:                               ; preds = %dec_label_pc_8d11f
  %8 = ptrtoint ptr %stack_var_-27 to i64
  %9 = inttoptr i64 %2 to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_8d1c8

dec_label_pc_8d1c8:                               ; preds = %dec_label_pc_8d1bc, %dec_label_pc_8d11f
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_8d1dd, label %dec_label_pc_8d1d8

dec_label_pc_8d1d8:                               ; preds = %dec_label_pc_8d1c8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8d1dd

dec_label_pc_8d1dd:                               ; preds = %dec_label_pc_8d1d8, %dec_label_pc_8d1c8
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

