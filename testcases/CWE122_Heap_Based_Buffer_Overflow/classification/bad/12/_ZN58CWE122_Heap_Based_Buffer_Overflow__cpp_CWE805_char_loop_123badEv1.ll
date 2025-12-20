@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_87cd:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_8815, label %dec_label_pc_87fe

dec_label_pc_87fe:                                ; preds = %dec_label_pc_87cd
  %5 = call i64 @_Znam(i64 50)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_882a

dec_label_pc_8815:                                ; preds = %dec_label_pc_87cd
  %7 = call i64 @_Znam(i64 100)
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %8, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_882a

dec_label_pc_882a:                                ; preds = %dec_label_pc_8815, %dec_label_pc_87fe
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %11 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_884e

dec_label_pc_884e:                                ; preds = %dec_label_pc_884e, %dec_label_pc_882a
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = add i64 %storemerge2.reload, %10
  %13 = add i64 %storemerge2.reload, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = inttoptr i64 %12 to ptr
  store i8 %15, ptr %16, align 1
  %17 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8875, label %dec_label_pc_884e

dec_label_pc_8875:                                ; preds = %dec_label_pc_884e
  %18 = add i64 %10, 99
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %20 = icmp eq ptr %stack_var_-136.0.reload, null
  br i1 %20, label %dec_label_pc_889f, label %dec_label_pc_8893

dec_label_pc_8893:                                ; preds = %dec_label_pc_8875
  %21 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @_ZdaPv(ptr %21, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_889f

dec_label_pc_889f:                                ; preds = %dec_label_pc_8893, %dec_label_pc_8875
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_88b4, label %dec_label_pc_88af

dec_label_pc_88af:                                ; preds = %dec_label_pc_889f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_88b4

dec_label_pc_88b4:                                ; preds = %dec_label_pc_88af, %dec_label_pc_889f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

