@global_var_fff = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_memmove_68_badData = external local_unnamed_addr global i64
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2263b:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_22684

dec_label_pc_22684:                               ; preds = %dec_label_pc_22684, %dec_label_pc_2263b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2269b, label %dec_label_pc_22684

dec_label_pc_2269b:                               ; preds = %dec_label_pc_22684
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_memmove_68_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_2272b, label %dec_label_pc_22726

dec_label_pc_22726:                               ; preds = %dec_label_pc_2269b
  call void @__stack_chk_fail()
  br label %dec_label_pc_2272b

dec_label_pc_2272b:                               ; preds = %dec_label_pc_22726, %dec_label_pc_2269b
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_22834:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_memmove_68_badData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %4, i32 %3)
  call void @printLine(ptr %2)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_228d7, label %dec_label_pc_228d2

dec_label_pc_228d2:                               ; preds = %dec_label_pc_22834
  call void @__stack_chk_fail()
  br label %dec_label_pc_228d7

dec_label_pc_228d7:                               ; preds = %dec_label_pc_228d2, %dec_label_pc_22834
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

