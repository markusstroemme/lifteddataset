@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6f858:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.in.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_6f899, label %dec_label_pc_6f889

dec_label_pc_6f889:                               ; preds = %dec_label_pc_6f858
  %5 = call i64 @_Znam(i64 10)
  store i64 %5, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_6f8a7

dec_label_pc_6f899:                               ; preds = %dec_label_pc_6f858
  %6 = call i64 @_Znam(i64 11)
  store i64 %6, ptr %storemerge.in.reg2mem, align 8
  br label %dec_label_pc_6f8a7

dec_label_pc_6f8a7:                               ; preds = %dec_label_pc_6f899, %dec_label_pc_6f889
  %storemerge.in.reload = load i64, ptr %storemerge.in.reg2mem, align 8
  %storemerge = inttoptr i64 %storemerge.in.reload to ptr
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call ptr @strcpy(ptr %storemerge, ptr nonnull %7)
  call void @printLine(ptr %storemerge)
  %9 = icmp eq i64 %storemerge.in.reload, 0
  br i1 %9, label %dec_label_pc_6f8f1, label %dec_label_pc_6f8e5

dec_label_pc_6f8e5:                               ; preds = %dec_label_pc_6f8a7
  %10 = ptrtoint ptr %stack_var_-27 to i64
  %11 = inttoptr i64 %storemerge.in.reload to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_6f8f1

dec_label_pc_6f8f1:                               ; preds = %dec_label_pc_6f8e5, %dec_label_pc_6f8a7
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_6f906, label %dec_label_pc_6f901

dec_label_pc_6f901:                               ; preds = %dec_label_pc_6f8f1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6f906

dec_label_pc_6f906:                               ; preds = %dec_label_pc_6f901, %dec_label_pc_6f8f1
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

