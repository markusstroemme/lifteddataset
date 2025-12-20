@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_memcpy_68_badData = external local_unnamed_addr global i64
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_18ff2:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1903b

dec_label_pc_1903b:                               ; preds = %dec_label_pc_1903b, %dec_label_pc_18ff2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_19052, label %dec_label_pc_1903b

dec_label_pc_19052:                               ; preds = %dec_label_pc_1903b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_190bd

dec_label_pc_190bd:                               ; preds = %dec_label_pc_190bd, %dec_label_pc_19052
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_190d4, label %dec_label_pc_190bd

dec_label_pc_190d4:                               ; preds = %dec_label_pc_190bd
  store i8 0, ptr %7, align 16
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_memcpy_68_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_1914a, label %dec_label_pc_19145

dec_label_pc_19145:                               ; preds = %dec_label_pc_190d4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1914a

dec_label_pc_1914a:                               ; preds = %dec_label_pc_19145, %dec_label_pc_190d4
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_192bb:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_memcpy_68_badData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1933d, label %dec_label_pc_19338

dec_label_pc_19338:                               ; preds = %dec_label_pc_192bb
  call void @__stack_chk_fail()
  br label %dec_label_pc_1933d

dec_label_pc_1933d:                               ; preds = %dec_label_pc_19338, %dec_label_pc_192bb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

