@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_78064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_260ae:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %dataBadBuffer_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_260f7

dec_label_pc_260f7:                               ; preds = %dec_label_pc_260f7, %dec_label_pc_260ae
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2610e, label %dec_label_pc_260f7

dec_label_pc_2610e:                               ; preds = %dec_label_pc_260f7
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_26179

dec_label_pc_26179:                               ; preds = %dec_label_pc_26179, %dec_label_pc_2610e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_26190, label %dec_label_pc_26179

dec_label_pc_26190:                               ; preds = %dec_label_pc_26179
  %7 = load i32, ptr @global_var_78064, align 4
  %8 = icmp eq i32 %7, 5
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_261e7, label %dec_label_pc_261d8

dec_label_pc_261d8:                               ; preds = %dec_label_pc_26190
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 32
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  %13 = bitcast ptr %dataBadBuffer_-56 to ptr
  store i64 %11, ptr %13, align 8
  store i8 0, ptr %12, align 16
  br label %dec_label_pc_261e7

dec_label_pc_261e7:                               ; preds = %dec_label_pc_261d8, %dec_label_pc_26190
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %14 = bitcast ptr %stack_var_-27 to ptr
  %15 = call i32 @strlen(ptr nonnull %14)
  %16 = add i32 %15, 1
  %17 = load ptr, ptr %dataBadBuffer_-56, align 8
  %18 = call ptr @strncpy(ptr %17, ptr nonnull %14, i32 %16)
  %19 = load ptr, ptr %dataBadBuffer_-56, align 8
  call void @printLine(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_26243, label %dec_label_pc_2623e

dec_label_pc_2623e:                               ; preds = %dec_label_pc_261e7
  call void @__stack_chk_fail()
  br label %dec_label_pc_26243

dec_label_pc_26243:                               ; preds = %dec_label_pc_2623e, %dec_label_pc_261e7
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

