@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_b75a9 = external constant [21 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_24567:
  %dataGoodBuffer_-848.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %data_-856 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_245b5

dec_label_pc_245b5:                               ; preds = %dec_label_pc_245b5, %dec_label_pc_24567
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_245cc, label %dec_label_pc_245b5

dec_label_pc_245cc:                               ; preds = %dec_label_pc_245b5
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_2463c

dec_label_pc_2463c:                               ; preds = %dec_label_pc_2463c, %dec_label_pc_245cc
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_24653, label %dec_label_pc_2463c

dec_label_pc_24653:                               ; preds = %dec_label_pc_2463c
  %8 = call i32 @globalReturnsFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_246b2, label %dec_label_pc_246a1

dec_label_pc_246a1:                               ; preds = %dec_label_pc_24653
  call void @printLine(ptr @global_var_b75a9)
  br label %dec_label_pc_246c0

dec_label_pc_246b2:                               ; preds = %dec_label_pc_24653
  %constexpr9 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr10 = udiv i128 %constexpr9, 16
  %constexpr11 = trunc i128 %constexpr10 to i64
  %constexpr12 = sext i64 %constexpr11 to i128
  %constexpr13 = mul i128 %constexpr12, 16
  %constexpr14 = trunc i128 %constexpr13 to i64
  %constexpr15 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr16 = and i64 %constexpr14, %constexpr15
  %constexpr17 = sub i64 0, %constexpr16
  %constexpr18 = add i64 %constexpr17, 15
  %10 = add i64 %5, %constexpr18
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store ptr %12, ptr %dataGoodBuffer_-848.0.reg2mem, align 8
  br label %dec_label_pc_246c0

dec_label_pc_246c0:                               ; preds = %dec_label_pc_246b2, %dec_label_pc_246a1
  %dataGoodBuffer_-848.0.reload = load ptr, ptr %dataGoodBuffer_-848.0.reg2mem, align 8
  %13 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 100)
  %14 = call ptr @memmove(ptr %dataGoodBuffer_-848.0.reload, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %15 = load i64, ptr %dataGoodBuffer_-848.0.reload, align 8
  call void @printLongLongLine(i64 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_2471c, label %dec_label_pc_24717

dec_label_pc_24717:                               ; preds = %dec_label_pc_246c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_2471c

dec_label_pc_2471c:                               ; preds = %dec_label_pc_24717, %dec_label_pc_246c0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_9d03a:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

