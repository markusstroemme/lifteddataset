@CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_loop_68_badData = external local_unnamed_addr global ptr
@global_var_bb9b5 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ec0f:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-832, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  store i64 %4, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_loop_68_badData, align 8
  call void @anon1()
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2ec68, label %dec_label_pc_2ec63

dec_label_pc_2ec63:                               ; preds = %dec_label_pc_2ec0f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ec68

dec_label_pc_2ec68:                               ; preds = %dec_label_pc_2ec63, %dec_label_pc_2ec0f
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ecda:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_loop_68_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %4, i64 0, i64 100)
  %5 = add i64 %0, -816
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2ed2a

dec_label_pc_2ed2a:                               ; preds = %dec_label_pc_2ecda, %dec_label_pc_2ed2a
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
  br i1 %15, label %dec_label_pc_2ed67, label %dec_label_pc_2ed2a

dec_label_pc_2ed67:                               ; preds = %dec_label_pc_2ed2a
  %16 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int64_t_declare_loop_68_badData, align 8
  %17 = ptrtoint ptr %16 to i64
  call void @printLongLongLine(i64 %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_2ed8e, label %dec_label_pc_2ed89

dec_label_pc_2ed89:                               ; preds = %dec_label_pc_2ed67
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ed8e

dec_label_pc_2ed8e:                               ; preds = %dec_label_pc_2ed89, %dec_label_pc_2ed67
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

