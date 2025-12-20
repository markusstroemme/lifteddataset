@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3c0d7:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-160 = alloca ptr, align 8
  %stack_var_-168 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3c131

dec_label_pc_3c131:                               ; preds = %dec_label_pc_3c131, %dec_label_pc_3c0d7
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3c148, label %dec_label_pc_3c131

dec_label_pc_3c148:                               ; preds = %dec_label_pc_3c131
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3c1b6

dec_label_pc_3c1b6:                               ; preds = %dec_label_pc_3c1b6, %dec_label_pc_3c148
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3c1cd, label %dec_label_pc_3c1b6

dec_label_pc_3c1cd:                               ; preds = %dec_label_pc_3c1b6
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %stack_var_-160 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  %11 = load ptr, ptr %stack_var_-160, align 8
  %12 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %13 = bitcast ptr %stack_var_-120 to ptr
  %14 = call ptr @strcpy(ptr %11, ptr nonnull %13)
  call void @printLine(ptr %11)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_3c27e, label %dec_label_pc_3c279

dec_label_pc_3c279:                               ; preds = %dec_label_pc_3c1cd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c27e

dec_label_pc_3c27e:                               ; preds = %dec_label_pc_3c279, %dec_label_pc_3c1cd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

