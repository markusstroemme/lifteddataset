@global_var_44d70 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_10c67:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_10d12.preheader, label %dec_label_pc_10ca9

dec_label_pc_10d12.preheader:                     ; preds = %dec_label_pc_10c67
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = add i64 %5, -48
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_10cf0

dec_label_pc_10ca9:                               ; preds = %dec_label_pc_10c67
  call void @exit(i32 -1)
  unreachable

dec_label_pc_10cf0:                               ; preds = %dec_label_pc_10cf0, %dec_label_pc_10d12.preheader
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %4
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 10
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_10d19, label %dec_label_pc_10cf0

dec_label_pc_10d19:                               ; preds = %dec_label_pc_10cf0
  %14 = bitcast ptr %1 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  call void @free(ptr %1)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_10d47, label %dec_label_pc_10d42

dec_label_pc_10d42:                               ; preds = %dec_label_pc_10d19
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_10d47

dec_label_pc_10d47:                               ; preds = %dec_label_pc_10d42, %dec_label_pc_10d19
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

