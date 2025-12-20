@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_b7475 = external constant [21 x i8]
@global_var_bb9b5 = external constant [5 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32
@global_var_e6024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a072:
  %dataGoodBuffer_-848.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %data_-856 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_1a0c0

dec_label_pc_1a0c0:                               ; preds = %dec_label_pc_1a0c0, %dec_label_pc_1a072
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1a0d7, label %dec_label_pc_1a0c0

dec_label_pc_1a0d7:                               ; preds = %dec_label_pc_1a0c0
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
  br label %dec_label_pc_1a147

dec_label_pc_1a147:                               ; preds = %dec_label_pc_1a147, %dec_label_pc_1a0d7
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_1a15e, label %dec_label_pc_1a147

dec_label_pc_1a15e:                               ; preds = %dec_label_pc_1a147
  %8 = load i32, ptr @global_var_e6024, align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %dec_label_pc_1a1ba, label %dec_label_pc_1a1a9

dec_label_pc_1a1a9:                               ; preds = %dec_label_pc_1a15e
  call void @printLine(ptr @global_var_b7475)
  br label %dec_label_pc_1a1c8

dec_label_pc_1a1ba:                               ; preds = %dec_label_pc_1a15e
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
  br label %dec_label_pc_1a1c8

dec_label_pc_1a1c8:                               ; preds = %dec_label_pc_1a1ba, %dec_label_pc_1a1a9
  %dataGoodBuffer_-848.0.reload = load ptr, ptr %dataGoodBuffer_-848.0.reg2mem, align 8
  %13 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %13, i64 0, i64 100)
  %14 = call ptr @memcpy(ptr %dataGoodBuffer_-848.0.reload, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %15 = load i64, ptr %dataGoodBuffer_-848.0.reload, align 8
  call void @printLongLongLine(i64 %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_1a224, label %dec_label_pc_1a21f

dec_label_pc_1a21f:                               ; preds = %dec_label_pc_1a1c8
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a224

dec_label_pc_1a224:                               ; preds = %dec_label_pc_1a21f, %dec_label_pc_1a1c8
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

