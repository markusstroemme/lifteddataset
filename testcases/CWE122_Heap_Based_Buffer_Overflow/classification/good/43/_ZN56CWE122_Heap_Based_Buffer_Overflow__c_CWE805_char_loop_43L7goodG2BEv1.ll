@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_34a25:
  %0 = call ptr @malloc(i32 100)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i8 0, ptr inttoptr (i64 100 to ptr), align 4
  ret i64 100
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_34a6c:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %.in.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-136 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-136, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-136)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-136, align 8
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store ptr %3, ptr %.in.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_34abf

dec_label_pc_34abf:                               ; preds = %dec_label_pc_34abf, %dec_label_pc_34a6c
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %.in.reload = load ptr, ptr %.in.reg2mem, align 8
  %5 = ptrtoint ptr %.in.reload to i64
  %6 = add i64 %storemerge2.reload, %5
  %7 = add i64 %storemerge2.reload, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %12 = load ptr, ptr %stack_var_-136, align 8
  %exitcond = icmp eq i64 %11, 100
  store ptr %12, ptr %.in.reg2mem, align 8
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_34ae6, label %dec_label_pc_34abf

dec_label_pc_34ae6:                               ; preds = %dec_label_pc_34abf
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %13, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = load ptr, ptr %stack_var_-136, align 8
  call void @printLine(ptr %16)
  %17 = load ptr, ptr %stack_var_-136, align 8
  %18 = bitcast ptr %17 to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_34b1e, label %dec_label_pc_34b19

dec_label_pc_34b19:                               ; preds = %dec_label_pc_34ae6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34b1e

dec_label_pc_34b1e:                               ; preds = %dec_label_pc_34b19, %dec_label_pc_34ae6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

