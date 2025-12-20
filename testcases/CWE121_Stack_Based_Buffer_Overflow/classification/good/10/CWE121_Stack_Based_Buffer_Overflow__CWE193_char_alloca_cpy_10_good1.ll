@global_var_1000 = external global ptr
@global_var_bb580 = external constant [21 x i8]
@global_var_ef300 = external local_unnamed_addr global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_69146:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6918f

dec_label_pc_6918f:                               ; preds = %dec_label_pc_6918f, %dec_label_pc_69146
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_691a6, label %dec_label_pc_6918f

dec_label_pc_691a6:                               ; preds = %dec_label_pc_6918f
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_69211

dec_label_pc_69211:                               ; preds = %dec_label_pc_69211, %dec_label_pc_691a6
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_69228, label %dec_label_pc_69211

dec_label_pc_69228:                               ; preds = %dec_label_pc_69211
  %7 = load i32, ptr @global_var_ef300, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_69280, label %dec_label_pc_6926f

dec_label_pc_6926f:                               ; preds = %dec_label_pc_69228
  call void @printLine(ptr @global_var_bb580)
  br label %dec_label_pc_6928f

dec_label_pc_69280:                               ; preds = %dec_label_pc_69228
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %9 = add i64 %4, %constexpr5
  %10 = and i64 %9, -16
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %10, ptr %12, align 8
  store i8 0, ptr %11, align 16
  br label %dec_label_pc_6928f

dec_label_pc_6928f:                               ; preds = %dec_label_pc_69280, %dec_label_pc_6926f
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %13 = load ptr, ptr %dataBadBuffer_-56, align 8
  %14 = bitcast ptr %stack_var_-27 to ptr
  %15 = call ptr @strcpy(ptr %13, ptr nonnull %14)
  %16 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_692db, label %dec_label_pc_692d6

dec_label_pc_692d6:                               ; preds = %dec_label_pc_6928f
  call void @__stack_chk_fail()
  br label %dec_label_pc_692db

dec_label_pc_692db:                               ; preds = %dec_label_pc_692d6, %dec_label_pc_6928f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

