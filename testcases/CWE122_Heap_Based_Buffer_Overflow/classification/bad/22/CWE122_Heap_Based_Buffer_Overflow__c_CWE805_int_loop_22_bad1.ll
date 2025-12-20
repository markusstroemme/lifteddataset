@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_22_badGlobal = external local_unnamed_addr global i32
@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_20eae:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_22_badGlobal, align 4
  %2 = call ptr @anon1(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 50)
  %5 = add i64 %0, -416
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_20f1b

dec_label_pc_20f1b:                               ; preds = %dec_label_pc_20eae, %dec_label_pc_20f1b
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %6 = ptrtoint ptr %storemerge1.reload to i64
  %7 = mul i64 %6, 4
  %8 = add i64 %7, %3
  %9 = add i64 %5, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add i64 %6, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge1.reg2mem, align 8
  br i1 %15, label %dec_label_pc_20f56, label %dec_label_pc_20f1b

dec_label_pc_20f56:                               ; preds = %dec_label_pc_20f1b
  %16 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %16)
  %17 = bitcast ptr %2 to ptr
  call void @free(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_20f8a, label %dec_label_pc_20f85

dec_label_pc_20f85:                               ; preds = %dec_label_pc_20f56
  call void @__stack_chk_fail()
  br label %dec_label_pc_20f8a

dec_label_pc_20f8a:                               ; preds = %dec_label_pc_20f85, %dec_label_pc_20f56
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_21167:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_int_loop_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_211a0, label %dec_label_pc_21181

dec_label_pc_21181:                               ; preds = %dec_label_pc_21167
  %2 = call ptr @malloc(i32 200)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_211a0, label %dec_label_pc_21196

dec_label_pc_21196:                               ; preds = %dec_label_pc_21181
  call void @exit(i32 -1)
  unreachable

dec_label_pc_211a0:                               ; preds = %dec_label_pc_21181, %dec_label_pc_21167
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
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

