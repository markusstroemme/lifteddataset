@global_var_bbd28 = external constant [36 x i8]
@global_var_bbd4c = external constant [10 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_735f0:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-64 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-64, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-64)
  %2 = load i32, ptr %stack_var_-64, align 4
  %3 = icmp ugt i32 %2, 9
  br i1 %3, label %dec_label_pc_73687, label %dec_label_pc_73655

dec_label_pc_73655:                               ; preds = %dec_label_pc_735f0
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %2 to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %6, %7
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7366b

dec_label_pc_7366b:                               ; preds = %dec_label_pc_7366b, %dec_label_pc_73655
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_73696, label %dec_label_pc_7366b

dec_label_pc_73687:                               ; preds = %dec_label_pc_735f0
  call void @printLine(ptr @global_var_bbd28)
  br label %dec_label_pc_73696

dec_label_pc_73696:                               ; preds = %dec_label_pc_7366b, %dec_label_pc_73687
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_736ab, label %dec_label_pc_736a6

dec_label_pc_736a6:                               ; preds = %dec_label_pc_73696
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_736ab

dec_label_pc_736ab:                               ; preds = %dec_label_pc_736a6, %dec_label_pc_73696
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_737ee:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_738ea, label %dec_label_pc_73835

dec_label_pc_73835:                               ; preds = %dec_label_pc_737ee
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_bbd4c)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_738e0, label %dec_label_pc_73891

dec_label_pc_73891:                               ; preds = %dec_label_pc_73835
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_738e0, label %dec_label_pc_738b8

dec_label_pc_738b8:                               ; preds = %dec_label_pc_73891
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %arg1, align 4
  br label %dec_label_pc_738e0

dec_label_pc_738e0:                               ; preds = %dec_label_pc_73891, %dec_label_pc_738b8, %dec_label_pc_73835
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_738ea

dec_label_pc_738ea:                               ; preds = %dec_label_pc_737ee, %dec_label_pc_738e0
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_738ff, label %dec_label_pc_738fa

dec_label_pc_738fa:                               ; preds = %dec_label_pc_738ea
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_738ff

dec_label_pc_738ff:                               ; preds = %dec_label_pc_738fa, %dec_label_pc_738ea
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

