@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_68_badData = external local_unnamed_addr global ptr
@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2391c:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2394f, label %dec_label_pc_23945

dec_label_pc_23945:                               ; preds = %dec_label_pc_2391c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2394f:                               ; preds = %dec_label_pc_2391c
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_239c7:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_68_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-432 to ptr
  store i64 %3, ptr %4, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = add i64 %0, -416
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %2, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %.reg2mem, align 8
  br label %dec_label_pc_23a17.dec_label_pc_23a17_crit_edge

dec_label_pc_23a17.dec_label_pc_23a17_crit_edge:  ; preds = %dec_label_pc_239c7, %dec_label_pc_23a17.dec_label_pc_23a17_crit_edge
  %.reload = load ptr, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-432, align 8
  %9 = ptrtoint ptr %.reload to i64
  %10 = mul i64 %9, 4
  %11 = ptrtoint ptr %.pre to i64
  %12 = add i64 %10, %11
  %13 = add i64 %6, %10
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  %18 = inttoptr i64 %17 to ptr
  %19 = icmp ugt ptr %18, inttoptr (i64 99 to ptr)
  store ptr %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_23a52, label %dec_label_pc_23a17.dec_label_pc_23a17_crit_edge

dec_label_pc_23a52:                               ; preds = %dec_label_pc_23a17.dec_label_pc_23a17_crit_edge
  %20 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_68_badData, align 8
  call void @printIntLine(i32 %20)
  %21 = load ptr, ptr %stack_var_-432, align 8
  %22 = bitcast ptr %21 to ptr
  call void @free(ptr %22)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  br i1 %24, label %dec_label_pc_23a86, label %dec_label_pc_23a81

dec_label_pc_23a81:                               ; preds = %dec_label_pc_23a52
  call void @__stack_chk_fail()
  br label %dec_label_pc_23a86

dec_label_pc_23a86:                               ; preds = %dec_label_pc_23a81, %dec_label_pc_23a52
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

