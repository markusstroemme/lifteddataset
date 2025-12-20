@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_6e891:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %myStruct_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %myStruct_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6e8da

dec_label_pc_6e8da:                               ; preds = %dec_label_pc_6e8da, %dec_label_pc_6e891
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6e8f1, label %dec_label_pc_6e8da

dec_label_pc_6e8f1:                               ; preds = %dec_label_pc_6e8da
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6e95c

dec_label_pc_6e95c:                               ; preds = %dec_label_pc_6e95c, %dec_label_pc_6e8f1
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_6e973, label %dec_label_pc_6e95c

dec_label_pc_6e973:                               ; preds = %dec_label_pc_6e95c
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  call void @anon0(i64 %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_6e9e8, label %dec_label_pc_6e9e3

dec_label_pc_6e9e3:                               ; preds = %dec_label_pc_6e973
  call void @__stack_chk_fail()
  br label %dec_label_pc_6e9e8

dec_label_pc_6e9e8:                               ; preds = %dec_label_pc_6e9e3, %dec_label_pc_6e973
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_6ea74:
  %stack_var_-27 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %0, ptr nonnull %2)
  call void @printLine(ptr %0)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_6eae7, label %dec_label_pc_6eae2

dec_label_pc_6eae2:                               ; preds = %dec_label_pc_6ea74
  call void @__stack_chk_fail()
  br label %dec_label_pc_6eae7

dec_label_pc_6eae7:                               ; preds = %dec_label_pc_6eae2, %dec_label_pc_6ea74
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

