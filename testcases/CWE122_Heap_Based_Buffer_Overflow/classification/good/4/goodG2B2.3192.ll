@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1e455:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1e4ac, label %dec_label_pc_1e4a2

dec_label_pc_1e4a2:                               ; preds = %dec_label_pc_1e455
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1e4ac:                               ; preds = %dec_label_pc_1e455
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %5, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1e4d0

dec_label_pc_1e4d0:                               ; preds = %dec_label_pc_1e4d0, %dec_label_pc_1e4ac
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = mul i64 %storemerge1.reload, 4
  %9 = add i64 %8, %4
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i64 %9 to ptr
  store i32 %12, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e50b, label %dec_label_pc_1e4d0

dec_label_pc_1e50b:                               ; preds = %dec_label_pc_1e4d0
  %15 = bitcast ptr %1 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  call void @free(ptr %1)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_1e53f, label %dec_label_pc_1e53a

dec_label_pc_1e53a:                               ; preds = %dec_label_pc_1e50b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e53f

dec_label_pc_1e53f:                               ; preds = %dec_label_pc_1e53a, %dec_label_pc_1e50b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

