@global_var_79e41 = external constant [21 x i8]
@global_var_7c820 = external constant [4 x i8]
@global_var_a2034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1ec3c:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a2034, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_1ec81, label %dec_label_pc_1ec70

dec_label_pc_1ec70:                               ; preds = %dec_label_pc_1ec3c
  call void @printLine(ptr @global_var_79e41)
  store i64 0, ptr %stack_var_-440.0.reg2mem, align 8
  br label %dec_label_pc_1eca6

dec_label_pc_1ec81:                               ; preds = %dec_label_pc_1ec3c
  %3 = call ptr @malloc(i32 400)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 %4, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1eca6, label %dec_label_pc_1ec9c

dec_label_pc_1ec9c:                               ; preds = %dec_label_pc_1ec81
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1eca6:                               ; preds = %dec_label_pc_1ec81, %dec_label_pc_1ec70
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.reload = load i64, ptr %stack_var_-440.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = add i64 %7, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1ecca

dec_label_pc_1ecca:                               ; preds = %dec_label_pc_1ecca, %dec_label_pc_1eca6
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 4
  %11 = add i64 %10, %stack_var_-440.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ed05, label %dec_label_pc_1ecca

dec_label_pc_1ed05:                               ; preds = %dec_label_pc_1ecca
  %17 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = inttoptr i64 %stack_var_-440.0.reload to ptr
  call void @free(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_1ed39, label %dec_label_pc_1ed34

dec_label_pc_1ed34:                               ; preds = %dec_label_pc_1ed05
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ed39

dec_label_pc_1ed39:                               ; preds = %dec_label_pc_1ed34, %dec_label_pc_1ed05
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

