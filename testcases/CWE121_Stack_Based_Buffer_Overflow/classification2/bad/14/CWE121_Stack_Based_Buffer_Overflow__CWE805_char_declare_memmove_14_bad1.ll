@global_var_9f074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4cec1:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBadBuffer_-192 = alloca [50 x i8], align 8
  %stack_var_-184 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_9f074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_4cec1.dec_label_pc_4cf02_crit_edge, label %dec_label_pc_4ceea

dec_label_pc_4cec1.dec_label_pc_4cf02_crit_edge:  ; preds = %dec_label_pc_4cec1
  %.pre = bitcast ptr %dataBadBuffer_-192 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4cf02

dec_label_pc_4ceea:                               ; preds = %dec_label_pc_4cec1
  %4 = ptrtoint ptr %stack_var_-184 to i64
  %5 = trunc i64 %4 to i8
  %6 = insertvalue [50 x i8] undef, i8 %5, 0
  store [50 x i8] %6, ptr %dataBadBuffer_-192, align 8
  %7 = bitcast ptr %dataBadBuffer_-192 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %7, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4cf02

dec_label_pc_4cf02:                               ; preds = %dec_label_pc_4cec1.dec_label_pc_4cf02_crit_edge, %dec_label_pc_4ceea
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %10 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %11 = load i64, ptr %.pre-phi.reload, align 8
  %12 = inttoptr i64 %11 to ptr
  %13 = call ptr @memmove(ptr %12, ptr nonnull %stack_var_-120, i32 100)
  %14 = add i64 %11, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = load i64, ptr %.pre-phi.reload, align 8
  %17 = inttoptr i64 %16 to ptr
  call void @printLine(ptr %17)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_4cf69, label %dec_label_pc_4cf64

dec_label_pc_4cf64:                               ; preds = %dec_label_pc_4cf02
  call void @__stack_chk_fail()
  br label %dec_label_pc_4cf69

dec_label_pc_4cf69:                               ; preds = %dec_label_pc_4cf64, %dec_label_pc_4cf02
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

