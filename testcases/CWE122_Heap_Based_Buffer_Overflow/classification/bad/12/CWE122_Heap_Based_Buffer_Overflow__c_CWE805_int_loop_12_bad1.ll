@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1fa5a:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.in.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1fab6, label %dec_label_pc_1fa91

dec_label_pc_1fa91:                               ; preds = %dec_label_pc_1fa5a
  %3 = call ptr @malloc(i32 200)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-440.0.in.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1fadb, label %dec_label_pc_1faac

dec_label_pc_1faac:                               ; preds = %dec_label_pc_1fa91
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1fab6:                               ; preds = %dec_label_pc_1fa5a
  %6 = call ptr @malloc(i32 400)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  store ptr %6, ptr %stack_var_-440.0.in.reg2mem, align 8
  br i1 %8, label %dec_label_pc_1fadb, label %dec_label_pc_1fad1

dec_label_pc_1fad1:                               ; preds = %dec_label_pc_1fab6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1fadb:                               ; preds = %dec_label_pc_1fab6, %dec_label_pc_1fa91
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.in.reload = load ptr, ptr %stack_var_-440.0.in.reg2mem, align 8
  %stack_var_-440.0 = ptrtoint ptr %stack_var_-440.0.in.reload to i64
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  %11 = add i64 %9, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1faff

dec_label_pc_1faff:                               ; preds = %dec_label_pc_1faff, %dec_label_pc_1fadb
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %12 = mul i64 %storemerge1.reload, 4
  %13 = add i64 %12, %stack_var_-440.0
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1fb3a, label %dec_label_pc_1faff

dec_label_pc_1fb3a:                               ; preds = %dec_label_pc_1faff
  %19 = bitcast ptr %stack_var_-440.0.in.reload to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  call void @free(ptr %stack_var_-440.0.in.reload)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_1fb6e, label %dec_label_pc_1fb69

dec_label_pc_1fb69:                               ; preds = %dec_label_pc_1fb3a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fb6e

dec_label_pc_1fb6e:                               ; preds = %dec_label_pc_1fb69, %dec_label_pc_1fb3a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_65cd4:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

