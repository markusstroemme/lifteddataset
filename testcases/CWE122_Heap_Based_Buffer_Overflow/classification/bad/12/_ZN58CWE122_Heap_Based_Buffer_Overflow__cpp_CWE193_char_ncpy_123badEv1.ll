@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8d05f:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.in.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8d0a0, label %dec_label_pc_8d090

dec_label_pc_8d090:                               ; preds = %dec_label_pc_8d05f
  %5 = call i64 @_Znam(i64 10)
  store i64 %5, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_8d0ae

dec_label_pc_8d0a0:                               ; preds = %dec_label_pc_8d05f
  %6 = call i64 @_Znam(i64 11)
  store i64 %6, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_8d0ae

dec_label_pc_8d0ae:                               ; preds = %dec_label_pc_8d0a0, %dec_label_pc_8d090
  %storemerge.in.reload = load i64, ptr %storemerge.in.reg2mem, align 8
  %storemerge = inttoptr i64 %storemerge.in.reload to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = call ptr @strncpy(ptr %storemerge, ptr nonnull %7, i32 %9)
  call void @printLine(ptr %storemerge)
  %11 = icmp eq i64 %storemerge.in.reload, 0
  br i1 %11, label %dec_label_pc_8d108, label %dec_label_pc_8d0fc

dec_label_pc_8d0fc:                               ; preds = %dec_label_pc_8d0ae
  %12 = ptrtoint ptr %stack_var_-27 to i64
  %13 = inttoptr i64 %storemerge.in.reload to ptr
  %14 = and i64 %12, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %13, ptr %15)
  br label %dec_label_pc_8d108

dec_label_pc_8d108:                               ; preds = %dec_label_pc_8d0fc, %dec_label_pc_8d0ae
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_8d11d, label %dec_label_pc_8d118

dec_label_pc_8d118:                               ; preds = %dec_label_pc_8d108
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8d11d

dec_label_pc_8d11d:                               ; preds = %dec_label_pc_8d118, %dec_label_pc_8d108
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

