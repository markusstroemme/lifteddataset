@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_21674:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataArray_-72 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_216bd

dec_label_pc_216bd:                               ; preds = %dec_label_pc_216bd, %dec_label_pc_21674
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_216d4, label %dec_label_pc_216bd

dec_label_pc_216d4:                               ; preds = %dec_label_pc_216bd
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_2173f

dec_label_pc_2173f:                               ; preds = %dec_label_pc_2173f, %dec_label_pc_216d4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_21756, label %dec_label_pc_2173f

dec_label_pc_21756:                               ; preds = %dec_label_pc_2173f
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  %10 = insertvalue [5 x ptr] undef, ptr %9, 0
  store [5 x ptr] %10, ptr %dataArray_-72, align 8
  %11 = bitcast ptr %dataArray_-72 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %12 to ptr
  %14 = insertvalue [5 x ptr] undef, ptr %13, 0
  store [5 x ptr] %14, ptr %dataArray_-64, align 8
  %15 = bitcast ptr %dataArray_-64 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_217cb, label %dec_label_pc_217c6

dec_label_pc_217c6:                               ; preds = %dec_label_pc_21756
  call void @__stack_chk_fail()
  br label %dec_label_pc_217cb

dec_label_pc_217cb:                               ; preds = %dec_label_pc_217c6, %dec_label_pc_21756
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2186b:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = add i32 %6, 1
  %8 = inttoptr i64 %4 to ptr
  %9 = call ptr @memmove(ptr %8, ptr nonnull %stack_var_-27, i32 %7)
  %10 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_218f2, label %dec_label_pc_218ed

dec_label_pc_218ed:                               ; preds = %dec_label_pc_2186b
  call void @__stack_chk_fail()
  br label %dec_label_pc_218f2

dec_label_pc_218f2:                               ; preds = %dec_label_pc_218ed, %dec_label_pc_2186b
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

