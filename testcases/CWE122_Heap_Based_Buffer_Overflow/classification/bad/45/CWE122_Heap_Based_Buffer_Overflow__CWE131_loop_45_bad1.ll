@CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_45_badData = external local_unnamed_addr global ptr
@global_var_44d70 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_a360:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-64 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_45_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-64 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, -48
  %6 = inttoptr i64 %5 to ptr
  %7 = load i32, ptr %6, align 8
  store i32 %7, ptr %2, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %.reg2mem, align 8
  br label %dec_label_pc_a3b8.dec_label_pc_a3b8_crit_edge

dec_label_pc_a3b8.dec_label_pc_a3b8_crit_edge:    ; preds = %dec_label_pc_a360, %dec_label_pc_a3b8.dec_label_pc_a3b8_crit_edge
  %.reload = load ptr, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-64, align 8
  %8 = ptrtoint ptr %.reload to i64
  %9 = mul i64 %8, 4
  %10 = ptrtoint ptr %.pre to i64
  %11 = add i64 %9, %10
  %12 = add i64 %5, %9
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add i64 %8, 1
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt ptr %17, inttoptr (i64 9 to ptr)
  store ptr %17, ptr %.reg2mem, align 8
  br i1 %18, label %dec_label_pc_a3e1, label %dec_label_pc_a3b8.dec_label_pc_a3b8_crit_edge

dec_label_pc_a3e1:                                ; preds = %dec_label_pc_a3b8.dec_label_pc_a3b8_crit_edge
  %19 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_45_badData, align 8
  call void @printIntLine(i32 %19)
  %20 = load ptr, ptr %stack_var_-64, align 8
  %21 = bitcast ptr %20 to ptr
  call void @free(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_a40f, label %dec_label_pc_a40a

dec_label_pc_a40a:                                ; preds = %dec_label_pc_a3e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_a40f

dec_label_pc_a40f:                                ; preds = %dec_label_pc_a40a, %dec_label_pc_a3e1
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_a411:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_a444, label %dec_label_pc_a43a

dec_label_pc_a43a:                                ; preds = %dec_label_pc_a411
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a444:                                ; preds = %dec_label_pc_a411
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_45_badData, align 8
  call void @anon1()
  ret void
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

