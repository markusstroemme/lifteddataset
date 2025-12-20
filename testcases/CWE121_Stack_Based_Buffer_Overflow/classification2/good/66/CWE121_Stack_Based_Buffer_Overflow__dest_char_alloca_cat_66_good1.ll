@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_f4cb:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %dataArray_-72 = alloca [5 x ptr], align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_f514

dec_label_pc_f514:                                ; preds = %dec_label_pc_f514, %dec_label_pc_f4cb
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_f52b, label %dec_label_pc_f514

dec_label_pc_f52b:                                ; preds = %dec_label_pc_f514
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_f596

dec_label_pc_f596:                                ; preds = %dec_label_pc_f596, %dec_label_pc_f52b
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_f5ad, label %dec_label_pc_f596

dec_label_pc_f5ad:                                ; preds = %dec_label_pc_f596
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
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
  br i1 %20, label %dec_label_pc_f622, label %dec_label_pc_f61d

dec_label_pc_f61d:                                ; preds = %dec_label_pc_f5ad
  call void @__stack_chk_fail()
  br label %dec_label_pc_f622

dec_label_pc_f622:                                ; preds = %dec_label_pc_f61d, %dec_label_pc_f5ad
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_f6bd:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strcat(ptr %6, ptr nonnull %7)
  call void @printLine(ptr %6)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_f73f, label %dec_label_pc_f73a

dec_label_pc_f73a:                                ; preds = %dec_label_pc_f6bd
  call void @__stack_chk_fail()
  br label %dec_label_pc_f73f

dec_label_pc_f73f:                                ; preds = %dec_label_pc_f73a, %dec_label_pc_f6bd
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

