@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_a1ba:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %stack_var_-152 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-152, align 8
  store i8 0, ptr %2, align 1
  %3 = load ptr, ptr %stack_var_-152, align 8
  %4 = ptrtoint ptr %3 to i64
  %5 = bitcast ptr %stack_var_-128 to ptr
  store i64 %4, ptr %5, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store i64 %4, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_a23b

dec_label_pc_a23b:                                ; preds = %dec_label_pc_a23b, %dec_label_pc_a1ba
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %storemerge3.reload, %.reload
  %9 = add i64 %storemerge3.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw nsw i64 %storemerge3.reload, 1
  %14 = load ptr, ptr %stack_var_-128, align 8
  %15 = ptrtoint ptr %14 to i64
  %exitcond = icmp eq i64 %13, 100
  store i64 %15, ptr %.reg2mem, align 8
  store i64 %13, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_a26e, label %dec_label_pc_a23b

dec_label_pc_a26e:                                ; preds = %dec_label_pc_a23b
  %16 = add i64 %15, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %18)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %dec_label_pc_a298, label %dec_label_pc_a28c

dec_label_pc_a28c:                                ; preds = %dec_label_pc_a26e
  %20 = bitcast ptr %18 to ptr
  call void @_ZdaPv(ptr %20, ptr inttoptr (i64 67 to ptr))
  br label %dec_label_pc_a298

dec_label_pc_a298:                                ; preds = %dec_label_pc_a28c, %dec_label_pc_a26e
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_a2ad, label %dec_label_pc_a2a8

dec_label_pc_a2a8:                                ; preds = %dec_label_pc_a298
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_a2ad

dec_label_pc_a2ad:                                ; preds = %dec_label_pc_a2a8, %dec_label_pc_a298
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

