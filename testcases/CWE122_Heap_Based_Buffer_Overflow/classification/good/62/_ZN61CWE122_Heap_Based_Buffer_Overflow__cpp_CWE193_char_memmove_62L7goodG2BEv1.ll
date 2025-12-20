@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_89843:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = load ptr, ptr %stack_var_-40, align 8
  %6 = bitcast ptr %5 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-27, i32 %4)
  %8 = load ptr, ptr %stack_var_-40, align 8
  call void @printLine(ptr %8)
  %9 = load ptr, ptr %stack_var_-40, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %dec_label_pc_898ce, label %dec_label_pc_898c2

dec_label_pc_898c2:                               ; preds = %dec_label_pc_89843
  %11 = ptrtoint ptr %stack_var_-27 to i64
  %12 = bitcast ptr %9 to ptr
  %13 = and i64 %11, 4294967288
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_898ce

dec_label_pc_898ce:                               ; preds = %dec_label_pc_898c2, %dec_label_pc_89843
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_898e3, label %dec_label_pc_898de

dec_label_pc_898de:                               ; preds = %dec_label_pc_898ce
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_898e3

dec_label_pc_898e3:                               ; preds = %dec_label_pc_898de, %dec_label_pc_898ce
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_8991c:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 11)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

