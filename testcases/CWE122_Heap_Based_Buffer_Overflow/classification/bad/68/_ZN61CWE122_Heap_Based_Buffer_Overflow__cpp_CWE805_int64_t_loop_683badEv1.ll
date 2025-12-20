@CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int64_t_loop_68_badData = external local_unnamed_addr global ptr
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_216bc:
  %0 = call i64 @_Znam(i64 400)
  store i64 %0, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int64_t_loop_68_badData, align 8
  %1 = call i64 @anon1()
  ret i64 %1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_21736:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int64_t_loop_68_badData, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %2, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_21786

dec_label_pc_21786:                               ; preds = %dec_label_pc_21786, %dec_label_pc_21736
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = mul i64 %storemerge1.reload, 8
  %9 = add i64 %8, %5
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_217c3, label %dec_label_pc_21786

dec_label_pc_217c3:                               ; preds = %dec_label_pc_21786
  %15 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__cpp_CWE805_int64_t_loop_68_badData, align 8
  %16 = ptrtoint ptr %15 to i64
  call void @printLongLongLine(i64 %16)
  %17 = icmp eq ptr %4, null
  br i1 %17, label %dec_label_pc_217ee, label %dec_label_pc_217df

dec_label_pc_217df:                               ; preds = %dec_label_pc_217c3
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr nonnull %4, ptr %19)
  br label %dec_label_pc_217ee

dec_label_pc_217ee:                               ; preds = %dec_label_pc_217df, %dec_label_pc_217c3
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_21803, label %dec_label_pc_217fe

dec_label_pc_217fe:                               ; preds = %dec_label_pc_217ee
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21803

dec_label_pc_21803:                               ; preds = %dec_label_pc_217fe, %dec_label_pc_217ee
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

