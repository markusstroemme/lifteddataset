@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_loop_68_badData = external local_unnamed_addr global ptr
@global_var_7c82d = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_134ac:
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_134df, label %dec_label_pc_134d5

dec_label_pc_134d5:                               ; preds = %dec_label_pc_134ac
  call void @exit(i32 -1)
  unreachable

dec_label_pc_134df:                               ; preds = %dec_label_pc_134ac
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_loop_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_13557:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_loop_68_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_135a7

dec_label_pc_135a7:                               ; preds = %dec_label_pc_13557, %dec_label_pc_135a7
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 8
  %8 = add i64 %7, %3
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_135e4, label %dec_label_pc_135a7

dec_label_pc_135e4:                               ; preds = %dec_label_pc_135a7
  %16 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int64_t_loop_68_badData, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @printLongLongLine(i64 %17)
  call void @free(ptr %2)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_1361a, label %dec_label_pc_13615

dec_label_pc_13615:                               ; preds = %dec_label_pc_135e4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1361a

dec_label_pc_1361a:                               ; preds = %dec_label_pc_13615, %dec_label_pc_135e4
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

