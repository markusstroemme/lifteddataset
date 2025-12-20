@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1fb70:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 400)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_1fbcc, label %dec_label_pc_1fba7

dec_label_pc_1fba7:                               ; preds = %dec_label_pc_1fb70
  br i1 %5, label %dec_label_pc_1fbf1, label %dec_label_pc_1fbc2

dec_label_pc_1fbc2:                               ; preds = %dec_label_pc_1fba7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1fbcc:                               ; preds = %dec_label_pc_1fb70
  br i1 %5, label %dec_label_pc_1fbf1, label %dec_label_pc_1fbe7

dec_label_pc_1fbe7:                               ; preds = %dec_label_pc_1fbcc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1fbf1:                               ; preds = %dec_label_pc_1fbcc, %dec_label_pc_1fba7
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = add i64 %6, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1fc15

dec_label_pc_1fc15:                               ; preds = %dec_label_pc_1fc15, %dec_label_pc_1fbf1
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 4
  %11 = add i64 %10, %7
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1fc50, label %dec_label_pc_1fc15

dec_label_pc_1fc50:                               ; preds = %dec_label_pc_1fc15
  %17 = bitcast ptr %3 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  call void @free(ptr %3)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_1fc84, label %dec_label_pc_1fc7f

dec_label_pc_1fc7f:                               ; preds = %dec_label_pc_1fc50
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fc84

dec_label_pc_1fc84:                               ; preds = %dec_label_pc_1fc7f, %dec_label_pc_1fc50
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

