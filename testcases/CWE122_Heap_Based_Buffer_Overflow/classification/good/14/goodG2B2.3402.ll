@global_var_7c820 = external constant [4 x i8]
@global_var_a206c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_20182:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a206c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_201db, label %dec_label_pc_201b6

dec_label_pc_201b6:                               ; preds = %dec_label_pc_20182
  %4 = call ptr @malloc(i32 400)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 %5, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_201db, label %dec_label_pc_201d1

dec_label_pc_201d1:                               ; preds = %dec_label_pc_201b6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_201db:                               ; preds = %dec_label_pc_201b6, %dec_label_pc_20182
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.reload = load i64, ptr %stack_var_-440.0.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 50)
  %10 = add i64 %8, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_201ff

dec_label_pc_201ff:                               ; preds = %dec_label_pc_201ff, %dec_label_pc_201db
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %11 = mul i64 %storemerge1.reload, 4
  %12 = add i64 %11, %stack_var_-440.0.reload
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2023a, label %dec_label_pc_201ff

dec_label_pc_2023a:                               ; preds = %dec_label_pc_201ff
  %18 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = inttoptr i64 %stack_var_-440.0.reload to ptr
  call void @free(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_2026e, label %dec_label_pc_20269

dec_label_pc_20269:                               ; preds = %dec_label_pc_2023a
  call void @__stack_chk_fail()
  br label %dec_label_pc_2026e

dec_label_pc_2026e:                               ; preds = %dec_label_pc_20269, %dec_label_pc_2023a
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

