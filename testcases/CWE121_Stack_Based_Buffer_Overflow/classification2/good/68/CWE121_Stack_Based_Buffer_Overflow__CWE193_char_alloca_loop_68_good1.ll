@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_68_goodG2BData = external local_unnamed_addr global i64
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_1042f:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_10478

dec_label_pc_10478:                               ; preds = %dec_label_pc_10478, %dec_label_pc_1042f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1048f, label %dec_label_pc_10478

dec_label_pc_1048f:                               ; preds = %dec_label_pc_10478
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_104fa

dec_label_pc_104fa:                               ; preds = %dec_label_pc_104fa, %dec_label_pc_1048f
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_10511, label %dec_label_pc_104fa

dec_label_pc_10511:                               ; preds = %dec_label_pc_104fa
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store i64 %11, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_68_goodG2BData, align 8
  call void @anon0()
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_10587, label %dec_label_pc_10582

dec_label_pc_10582:                               ; preds = %dec_label_pc_10511
  call void @__stack_chk_fail()
  br label %dec_label_pc_10587

dec_label_pc_10587:                               ; preds = %dec_label_pc_10582, %dec_label_pc_10511
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10647:
  %.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE193_char_alloca_loop_68_goodG2BData, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_106cd, label %dec_label_pc_1069f.lr.ph

dec_label_pc_1069f.lr.ph:                         ; preds = %dec_label_pc_10647
  %7 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_1069f

dec_label_pc_1069f:                               ; preds = %dec_label_pc_1069f, %dec_label_pc_1069f.lr.ph
  %.reload = load i64, ptr %.reg2mem, align 8
  %8 = add i64 %.reload, %1
  %9 = add i64 %.reload, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add nuw i64 %.reload, 1
  %exitcond = icmp eq i64 %13, %5
  store i64 %13, ptr %.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_106cd, label %dec_label_pc_1069f

dec_label_pc_106cd:                               ; preds = %dec_label_pc_1069f, %dec_label_pc_10647
  %14 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_106ee, label %dec_label_pc_106e9

dec_label_pc_106e9:                               ; preds = %dec_label_pc_106cd
  call void @__stack_chk_fail()
  br label %dec_label_pc_106ee

dec_label_pc_106ee:                               ; preds = %dec_label_pc_106e9, %dec_label_pc_106cd
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

